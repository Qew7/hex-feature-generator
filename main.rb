require_relative 'hex_encounter_generator'
require_relative 'weather_generator'
require_relative 'adventure_generator'
require_relative 'calendar_day_tracker'
require 'io/console'
require 'date'

input = ''

def next_time_of_day
  @arg_time_of_day || 'День'
end

def next_date
  Date.today
end

@options = {
  explored: false,
  next_time_of_day: next_time_of_day,
  next_date: next_date,
}

def clear_screen
  print "\e[H\e[2J"
end

def parse_input
  input = STDIN.getch
  exit if input == 'q'
  @options[:explored] = !@options[:explored] if input == 'e'
  @options[:next_time_of_day] = CalendarDayTracker.next_time_of_day(@options[:next_time_of_day]) if input == 'n'
  @options[:next_date] = @options[:next_date].next if input == 'd'
  @options[:next_date] = @options[:next_date].prev_day if input == 'p'
  input
end

def output
  output_string = <<-HEREDOC
#{ '-' * 29 + 'КАЛЕНДАРЬ' + '-' * 28 }

#{ CalendarDayTracker.call(next_time_of_day: @options[:next_time_of_day], next_date: @options[:next_date]) }
#{ '-' * 30 + 'ПОГОДА' + '-' * 30 }

#{ WeatherGenerator.generate }
#{ '-' * 30 + 'СОБЫТИЕ' + '-' * 29 }

#{ @options[:explored] ? 'Иследованый гекс' : 'Не иследованый гекс' }
#{ HexEncounterGenerator.generate(explored: @options[:explored]) }

#{ '-' * 24 + 'БЫСТРОЕ ПРИКЛЮЧЕНИЕ' + '-' * 23 }

#{ adventure_text }
#{ '-' * 66 }
  HEREDOC
end

def options_output
  <<-HEREDOC
  Дата: #{@options[:next_date]}
  Время дня: #{@options[:next_time_of_day]}
  Гекс исследован?: #{@options[:explored]}
  HEREDOC
end

def adventure_text
  adventure_hash = AdventureGenerator.generate
  <<-HEREDOC
  #{adventure_hash[:caller]}: #{adventure_hash[:backstory]}

  потому что #{adventure_hash[:enemy]} #{adventure_hash[:enemy_motivation]}

  нужно #{adventure_hash[:challenge]}

  до того как #{adventure_hash[:timer]}

  помочь может #{adventure_hash[:advantage]}

  подсказкой может стать #{adventure_hash[:clue]}

  за это можно получить #{adventure_hash[:reward]}
  HEREDOC
end

while true do
  clear_screen
  if input == 'g' || @output_string.nil?
    @output_string = output
  end
  puts @output_string
  puts '-' * 19 + 'НАСТРОЙКИ СЛЕДУЮЩЕЙ ГЕНЕРАЦИИ' + '-' * 18
  puts options_output
  puts '-' * 28 + 'УПРАВЛЕНИЕ' + '-' * 28
  puts "q - Выход | g - Сгенерировать"
  puts "e - Иследованый\\Не иследованый гекс"
  puts "n - Следующее время дня"
  puts "d - Следующий день | p - Предыдущий день"
  input = parse_input
end