require_relative 'hex_encounter_generator'
require_relative 'weather_generator'
require_relative 'adventure_generator'
require_relative 'calendar_day_tracker'
require 'io/console'
require 'date'
require 'cli/ui'

input = ''

def next_date
  Date.today
end

@options = {
  explored: false,
  next_time_of_day: 'День',
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

def calendar_info
  <<-HEREDOC
    #{ CalendarDayTracker.call(next_time_of_day: @options[:next_time_of_day], next_date: @options[:next_date]) }
  HEREDOC
end

def weather_info
  <<-HEREDOC
    #{ WeatherGenerator.generate }
  HEREDOC
end

def encounter_info
  <<-HEREDOC
    #{ @options[:explored] ? 'Иследованый гекс' : 'Не иследованый гекс' }
    #{ HexEncounterGenerator.generate(explored: @options[:explored]) }
  HEREDOC
end

def options_output
  <<-HEREDOC
  Дата: #{@options[:next_date]}
  Время дня: #{@options[:next_time_of_day]}
  Гекс исследован?: #{@options[:explored]}
  HEREDOC
end

def adventure_info
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

CLI::UI::StdoutRouter.enable
while true do
  clear_screen
  CLI::UI::Frame.open('КАЛЕНДАРЬ') { puts calendar_info }
  CLI::UI::Frame.open('ПОГОДА') { puts weather_info }
  CLI::UI::Frame.open('ЭНКАУНТЕР') { puts encounter_info }
  CLI::UI::Frame.open('БЫСТРОЕ ПРИКЛЮЧЕНИЕ') { puts adventure_info }
  input = parse_input
end