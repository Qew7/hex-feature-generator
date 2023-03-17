require_relative 'hex_encounter_generator'
require_relative 'weather_generator'
require_relative 'adventure_generator'
require_relative 'dream_generator'
require_relative 'calendar_day_tracker'
require 'io/console'
require 'date'
require 'cli/ui'

class Game
  def initialize
    @options = default_options
  end

  def start_game
    CLI::UI::StdoutRouter.enable
    loop do
      clear_screen
      CLI::UI::Frame.open('КАЛЕНДАРЬ') { puts calendar_info }
      CLI::UI::Frame.open('ПОГОДА') { puts weather_info }
      CLI::UI::Frame.open('ЭНКАУНТЕР') { puts encounter_info }
      CLI::UI::Frame.open('БЫСТРОЕ ПРИКЛЮЧЕНИЕ') { puts adventure_info }
      CLI::UI::Frame.open('СОН') { puts dream_info }
      parse_input
    end
  end

  private

  def default_options
    {
      explored: false,
      next_time_of_day: 'День',
      next_date: Date.today,
    }
  end

  def clear_screen
    print "\e[H\e[2J"
  end

  def parse_input
    input = STDIN.getch
    exit if input == 'q'
    toggle_explored! if input == 'e'
    change_next_time_of_day! if input == 'n'
    move_to_next_day! if input == 'd'
    move_to_previous_day! if input == 'p'
  end

  def toggle_explored!
    @options[:explored] = !@options[:explored]
  end

  def change_next_time_of_day!
    @options[:next_time_of_day] =
      CalendarDayTracker.next_time_of_day(@options[:next_time_of_day])
  end

  def move_to_next_day!
    @options[:next_date] = @options[:next_date].next
  end

  def move_to_previous_day!
    @options[:next_date] = @options[:next_date].prev_day
  end

  def calendar_info
    "#{CalendarDayTracker.call(next_time_of_day: @options[:next_time_of_day], next_date: @options[:next_date])}"
  end

  def weather_info
    "#{WeatherGenerator.generate}"
  end

  def encounter_info
    "#{encounter_text}#{HexEncounterGenerator.generate(explored: @options[:explored])}"
  end

  def encounter_text
    @options[:explored] ? "Иследованый гекс\n" : "Не иследованый гекс\n"
  end

  def adventure_info
    adventure_hash = AdventureGenerator.generate
    adventure_string = <<~HEREDOC
      #{adventure_hash[:caller].blue}: #{adventure_hash[:backstory]}

      потому что #{adventure_hash[:enemy][:name].red} #{adventure_hash[:enemy_motivation]}

      нужно #{adventure_hash[:challenge]}

      до того как #{adventure_hash[:timer]}

      помочь может #{adventure_hash[:advantage]}

      подсказкой может стать #{adventure_hash[:clue]}

      за это можно получить #{adventure_hash[:reward].light_cyan}
    HEREDOC
    adventure_string.gsub(/^ +/, "")
  end

  def dream_info
    "#{DreamGenerator.generate}"
  end
end
