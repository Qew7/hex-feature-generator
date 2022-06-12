class AdventureChallenge < AdventurePart
  attr_reader :faction

  def initialize(faction: nil)
    @faction = faction
  end

  def roll
    if [:who, :what].sample == :who
      [
        DiceRoller.roll_from_table(verb_with_who_table),
        adjective,
        who,
        faction
      ].join(' ').strip
    else
      [
        DiceRoller.roll_from_table(verb_with_what_table),
        adjective,
        what,
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
    5.times { table << "Крепко присоеденить" }
    5.times { table << "Освободить" }
    5.times { table << "Преследовать" }
    5.times { table << "Обогнать" }
    5.times { table << "Отсоеденить крепко присоедененного" }
    5.times { table << "Сбросить" }
    5.times { table << "Пригнуться под" }
    5.times { table << "Найти" }
    5.times { table << "Выловить из водоема" }
    5.times { table << "Перепрыгнуть" }
    5.times { table << "Выслушать" }
    5.times { table << "Посмотреть на" }
    5.times { table << "Передвинуть" }
    5.times { table << "Померяться силами с" }
    5.times { table << "Дотянуться до" }
    5.times { table << "Оседлать" }
    5.times { table << "Понюхать или попробовать" }
    5.times { table << "Поговорить с" }
    table
  end

  def verb_with_what_table
    table = []
    5.times { table << "Крепко присоеденить" }
    5.times { table << "Балансировать на" }
    5.times { table << "Выбрать из" }
    5.times { table << "Спуститься с" }
    5.times { table << "Забраться на" }
    5.times { table << "Закрыть" }
    5.times { table << "Отсоеденить крепко присоедененное" }
    5.times { table << "Сбросить с высоты" }
    5.times { table << "Перебраться через" }
    5.times { table << "Выловить из водоема" }
    5.times { table << "Перепрыгнуть через" }
    5.times { table << "Создать шум с помощью" }
    5.times { table << "Соеденить элементы" }
    5.times { table << "Открыть" }
    5.times { table << "Оседлать" }
    5.times { table << "Протиснуться через" }
    5.times { table << "Переплыть" }
    table
  end
end