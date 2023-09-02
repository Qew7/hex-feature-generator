class Dungeons::Room
  attr_reader :data

  def initialize(data)
    @data = data
  end

  def description
    puts open_info
    puts 'x' * 30
    puts secret_info
  end

  private

  def open_info
    "Комната в форме #{shape_in_rus[data['shape']]},\
    #{to_meters(to_meters(data['height']))} метров на #{to_meters(data['width'])} метров. \
    Внутри #{visible_doors_amount} дверей:\
    #{visible_doors_info.join(', ')}"
  end
  
  def secret_info
    "#{secret_doors_amount} секретных дверей: #{secret_doors_info.join(', ')}"
  end

  def visible_doors_amount
    visible_doors.map(&:values).flatten.count
  end

  def secret_doors_amount
    secret_doors.map(&:values).flatten.count
  end

  def visible_doors_info
    visible_doors.map { |di| "#{di.values.count} на #{direction_in_rus[di.keys.first]}" }
  end

  def secret_doors_info
    secret_doors.map { |di| "#{di.values.count} на #{direction_in_rus[di.keys.first]}" }
  end

  def visible_doors
    data['doors'].map do |s, ds|
      { s => ds.reject{ |door| door['type'] == 'secret' } }
    end.reject {|di| di.values.first.empty? }
  end

  def secret_doors
    data['doors'].map do |s, ds|
      { s => ds.filter{ |door| door['type'] == 'secret' } }
    end.reject {|di| di.values.first.empty? }
  end

  def to_meters(feets)
    (feets / 3.281).ceil
  end

  def shape_in_rus
    {
      'square' => 'прямоугольник',
      'polygon' => 'многоугольник',
      'circle' => 'окружность',
    }
  end

  def direction_in_rus
    {
      'north' => 'север',
      'south' => 'юг',
      'east' => 'восток',
      'west' => 'запад',
    }
  end
end