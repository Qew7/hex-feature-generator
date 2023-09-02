class Dungeons::Level
  def initialize(number: 0, rooms: [], description: nil, data: nil, dungeon: nil)
    @number = number
    @rooms = rooms
    @description = description
    @dungeon = dungeon
    @data = data
  end

  attr_reader :data, :number, :rooms, :description, :dungeon

  def to_s
    data['cells'].each_with_index do |row, row_num|
      long_room_number = false
      puts (row.map.with_index do |s, col_num|
        if s == 16
          '▓'.colorize(:white).colorize(background: :white)
        elsif s == 0
          ' '
        elsif s == 4
          ':'.colorize(:white).colorize(background: :light_black)
        elsif s == 524292 || s == 262148
          '+'.colorize(:black).colorize(background: :light_black)
        elsif s == 1048580
          'S'.colorize(:black).colorize(background: :light_black)
        elsif s == 4194308
          '<'.colorize(:black).colorize(background: :light_white)
        elsif s == 8388612
          '>'.colorize(:black).colorize(background: :light_white)
        elsif s.to_s.size == 3
          '.'
        elsif s.to_s.size > 7
          room = data['rooms'].find do |r|
            next if r.nil?
            r['col'].between?(col_num - 5, col_num) && r['row'].between?(row_num - 3, row_num)
          end
          room_number = room['id']
          if room_number > 9
            if long_room_number
              long_room_number = false
              room_number.to_s.split("").last.colorize(:red).colorize(background: :green)
            else
              long_room_number = true
              room_number.to_s.split("").first.colorize(:red).colorize(background: :green)
            end
          else
            room_number.to_s.colorize(:red).colorize(background: :green)
          end
        elsif s == data['cell_bit']['trapped']
          't'
        elsif s == data['cell_bit']['locked']
          '6'
        else
          '.'
        end
      end.join)
    end
    p
    puts dungeon.levels['name']
    puts dungeon.levels['description']
    puts "#{number} этаж"
    puts dungeon.seed
    nil
  end

  def room(room_number)
    room_data = data['rooms'].find do|r|
      r.nil? ? next : (r['id'] == room_number)
    end
    Dungeons::Room.new(room_data)
  end
end