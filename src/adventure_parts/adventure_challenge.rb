class AdventureChallenge < AdventurePart
  require 'colorize'

  attr_reader :faction

  def initialize(faction: nil)
    @faction = faction
  end

  def roll
    if [:who, :what].sample == :who
      [
        DiceRoller.roll_from_table(verb_with_who_table).cyan,
        adjective&.cyan,
        who.cyan,
        faction
      ].join(' ').strip
    else
      [
        DiceRoller.roll_from_table(verb_with_what_table).cyan,
        adjective&.cyan,
        what.cyan,
      ].join(' ').strip
    end
  end
  
  private

  def adjective
    AdventureAdjective.roll
  end

  def who
    AdventurePerson.roll
  end

  def what
    AdventureItem.roll
  end

  def verb_with_who_table
    table = []
    1.times { table << "Освободить" }
    1.times { table << "Преследовать" }
    1.times { table << "Обогнать" }
    1.times { table << "Найти" }
    1.times { table << "Выловить из водоема" }
    1.times { table << "Выслушать" }
    1.times { table << "Померяться силами с" }
    1.times { table << "Поговорить с" }
    table
  end

  def verb_with_what_table
    table = []
    1.times { table << "Выбрать из" }
    1.times { table << "Забраться на" }
    1.times { table << "Запечатать" }
    1.times { table << "Сбросить с высоты" }
    1.times { table << "Выловить из водоема" }
    1.times { table << "Создать шум с помощью" }
    1.times { table << "Соеденить элементы" }
    table
  end
end