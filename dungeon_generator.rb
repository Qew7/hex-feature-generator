# frozen_string_literal: true

class DungeonGenerator
  require_relative 'src/libraries'

  def initialize(name: Dungeons::Name.generate, levels_amount: 2, levels: nil, level: 1, columns: rand(20..70), rows: rand(10..35), seed: rand(1..99999))
    @name = name
    @levels_amount = levels_amount
    @level = level
    @columns = columns
    @rows = rows
    @seed = seed
    @levels = levels || generate_dungeon
    @seed = seed
  end

  attr_reader :columns, :rows, :seed, :auth, :id, :json, :name, :levels, :levels_amount

  def self.load(name)
    file = File.open("saved_dungeons/#{name}.json")
    file_data = file.read
    json = JSON.parse(file_data)
    new(levels: json, name: json['name'], seed: json['seed'])
  end

  def level(level_number)
    Dungeons::Level.new(
      number: level_number,
      description: '',
      data: levels[level_number.to_s],
      dungeon: self
    )
  end

  def room(level_number, room_number)
    retries = 0
    room = levels[level_number.to_s]['rooms'].find{ |r| next if r.nil?; r['id'] == room_number }
    return room['content'] if room['content']
    room_with_trap = DiceRoller.roll_dice(6) == 1
    room_with_monsters = DiceRoller.roll_dice(6) == 1
    if room_with_monsters
      monster_reaction = %w[Агрессивны Недружелюбны Недружелюбны Недружелюбны Нейтральны Нейтральны Нейтральны Индифирентны Индифирентны  Индифирентны Дружелюбны].sample
    end
    trap_string = room_with_trap ? 'В комнате находится ловушка, опиши как игроки могли бы ее заметить.' : 'В этой комнате находится препятствие, опиши какое конкретно'
    monster_string = room_with_monsters ? "В комнате находятся #{monster_reaction} существа подходящие под описание подземелья, конкретно что это за существа, как их называют, как они выглядят и что им нужно. При описании учти что чем больше номер этажа тем опаснее существа. Подробно опиши как выглядят существа, как они передвигаются, если они агрессивные то напиши как атакуют." : 'В комнате отсутствуют существа.'
    equipment_string = ["В комнате находится обмундирование или предметы роскоши, опиши какие конкретно, максимум #{rand(1..3)}. Каждое описано настолько подробно что читателю кажется будто этот предмет уже в его руках.", "В комнате отсутствует какое либо обмундирование."].sample
    description_string = ["Описание одной из комнат подземелья, само подземелье можно описать как: #{levels['description'].values.sample}.", "Дай интересное описание комнаты."].sample
  begin
    response = gpt_client.send_message(
      "Ты писатель в жанре grim dark low fantasy. \
      Твои тексты вселяют чувство мурашек по спине, они будоражат вообращение читателей, \
      каждая новая строчка заставляет читателя почувствовать все то что ты хочешь ему передать. \
      Опиши комнату в подземелье #{name} на #{level_number} этаже. \
      Описание веди во втором лице, к нескольким персонажам, обращайся на 'вы'. \ 
      Комната в форме #{room['shape']}. \
      Не повторять название подземелья в ответе. \d
      Ответ должен быть в формате JSON содержать 7 ключей:
      Первый должен называться description в нем ты описываешь саму комнату, интерьер. #{description_string} \
      Придумай что нибудь интересное что может содержать эта комната. \
      Опиши какой запах чувствуют персонажи в этой комнате. \
      Опиши что слышат персонажи находясь в этой комнате.  \
      Придумай чем эта комната может выделяться на фоне других. \
      Второй должен называться monsters в нем должен быть массив в котором ты должен описать существ в этой комнате, если они есть, \
      каждый элемент массива должен быть объектом с полями name и description, если монстров нет, массив должен быть пустым. #{monster_string} \
      Третьй должен называться traps в нем ты должен описать ловушки в этой комнате, если они есть. #{trap_string} \
      Четвертый должен называться items в нем ты должен описать все предметы которые находятся в комнате. #{equipment_string} \
      Пятый должен называться atmosphere, в нем опиши что могут чувствовать персонажи находясь в этой комнате \
      Шестой должен называться smell, в нем опиши какие запахи чувствуют персонажи находясь в этой комнате \
      Седьмой должен называться light, в нем опиши какие источники освещения находятся в комнате"
    )
    result = JSON.parse(response)
    room['content'] = result
  rescue => e
    retries += 1
    return if retries == 10
    retry
  end
  end

  def generate_for_all_rooms
    1.upto(levels_amount) do |i|
      p "level #{i}"
      levels[i.to_s]['rooms'].compact.each do |room|
        p "room #{room['id']} out of #{levels[i.to_s]['rooms'].compact.count}"
        room(i, room['id'])
      end
    end
    save
  end

  def regenerate
    @seed = rand(1..99999)
    @levels = generate_dungeon
  end

  def save
    Dir.mkdir 'saved_dungeons' unless File.exist?('saved_dungeons')  
    File.open("saved_dungeons/#{name}_#{seed}.json", 'w') { |file| file.write(levels.to_json) }
  end
  
  private

  def gpt_client
    Clients::ChatGPT.new
  end

  def generate_dungeon
    dungeon = {
      'name' => name,
      'description' => Dungeons::Description.generate,
      'seed' => seed,
    }
    levels_amount.times do |level|
      auth_data = JSON.parse(HTTParty.get(generation_url(level + 1)).body)
      @auth = auth_data['auth']
      @id = auth_data['id']
      json_data = JSON.parse(HTTParty.get(json_url).body)
      dungeon[(level + 1).to_s] = JSON.parse(HTTParty.get('https://donjon.bin.sh' + json_data['href']).body)
    end
    dungeon
  end

  def json_url
    "https://donjon.bin.sh/fantasy/dungeon/download/json.cgi
    ?auth=#{auth}
    &id=#{id}".gsub(/\n/," ").gsub(" ", "")
  end

  def generation_url(level)
    "https://donjon.bin.sh/fantasy/dungeon/construct.cgi
    ?name=im_just_testing_my_api_im_sorry_im_not_ddosing_you
    &level=#{level}
    &infest=&n_pc=4&motif=
    &seed=#{seed}#{level}
    &dungeon_size=Custom
    &map_cols=#{columns}
    &map_rows=#{rows}
    &dungeon_layout=Box
    &peripheral_egress=
    &room_layout=Scattered
    &room_size=Medium
    &room_polymorph=Many
    &door_set=Deathtrap
    &corridor_layout=Labyrinth
    &remove_deadends=All
    &add_stairs=Yes
    &image_size=
    &map_style=Standard
    &grid=Square".gsub(/\n/," ").gsub(" ", "")
  end
end