class CalendarDayTracker
  def self.call(options = {})
    <<-HEREDOC
    #{calculate_date(options[:next_date])} | #{calculate_time_of_day(options[:next_time_of_day])} | #{calculate_season(options[:next_date])}
    #{@fantasy_date}
    #{holiday(options[:next_date])}
    HEREDOC
  end

  def self.times_of_day
    %w[Вечер Ночь Утро День]
  end

  def self.next_time_of_day(current_time_of_day)
    current_time_of_day_index = times_of_day.index(current_time_of_day)
    next_time_of_day_index = (current_time_of_day_index == (times_of_day.count - 1) ? 0 : (current_time_of_day_index + 1))
    times_of_day[next_time_of_day_index]
  end

  private

  def self.calculate_season(date)    
    case date.month
      when 12, 1, 2
        'Зима'.white
      when 3..5
        'Весна'.green
      when 6..8
        'Лето'.yellow
      when 9..11
        'Осень'.orange
    end
  end

  def self.holiday(date)
    key = "#{"%02d" % date.month}-#{"%02d" % date.day}"
    holidays[key]
  end

  def self.holidays
    {
      "12-31" => 'Венец зимы',
      "05-01" => 'Зеленотравье',
      "06-25" => 'Венец лета',
      "08-01" => 'Праздник жатвы',
      "02-29" => 'Щитовой сход',
    }
  end
  
  def self.calculate_date(date)
    month_name = month_names[date.month - 1]
    weekday_name = weekday_names[date.wday - 1]
    @fantasy_date = "#{date.day} #{month_name}, #{weekday_name}"
    date
  end

  def self.calculate_time_of_day(time_of_day)
    time_of_day
  end

  def self.month_names
    [
      'Хаммера',
      'Алтуриака',
      'Чеса',
      'Тарсака',
      'Миртула',
      'Киторна',
      'Флеймрула',
      'Элизиса',
      'Элейнта',
      'Марпенота',
      'Укта',
      'Найтала',
    ]
  end

  def self.weekday_names
    [
      'Тирдень',
      'Келедень',
      'Мистрадень',
      'Огдень',
      'Акадень',
      'Латандень',
      'Яндень',
    ]
  end
end
