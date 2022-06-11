class FactionName < Name
  def generate
    [
      DiceRoller.roll_from_table(adjectives_table),
      DiceRoller.roll_from_table(races_table),
      DiceRoller.roll_from_table(of_something_table),
    ].join(" ").strip
  end

  private

  def adjectives_table
    adjectives = []
    20.times { adjectives << nil }
    1.times { adjectives << "Огненные" }
    1.times { adjectives << "Жгучие" }
    1.times { adjectives << "Ледяные" }
    1.times { adjectives << "Ядовитые" }
    1.times { adjectives << "Головастые" }
    1.times { adjectives << "Ушастые" }
    1.times { adjectives << "Глазастые" }
    1.times { adjectives << "Мудрые" }
    1.times { adjectives << "Крепкоголовые" }
    1.times { adjectives << "Зубастые" }
    1.times { adjectives << "Хитрые" }
    1.times { adjectives << "Смелые" }
    1.times { adjectives << "Шипастые" }
    1.times { adjectives << "Крутые" }
    1.times { adjectives << "Злые" }
    1.times { adjectives << "Святые" }
    1.times { adjectives << "Крепкие" }
    1.times { adjectives << "Каменные" }
    1.times { adjectives << "Голодные" }
    1.times { adjectives << "Жирные" }
    1.times { adjectives << "Скользкие" }
    1.times { adjectives << "Лунные" }
    1.times { adjectives << "Молниеносные" }
    1.times { adjectives << "Искрящиеся" }
    adjectives
  end

  def races_table
    races = []
    1.times { races << "Гоблины" }
    1.times { races << "Кобольды" }
    1.times { races << "Гномы" }
    1.times { races << "Кентавры" }
    1.times { races << "Минотавры" }
    1.times { races << "Гиганты" }
    1.times { races << "Ящеры" }
    1.times { races << "Энты" }
    1.times { races << "Тролли" }
    1.times { races << "Нимфы" }
    1.times { races << "Феи" }
    1.times { races << "Гремлины" }
    1.times { races << "Наги" }
    1.times { races << "Нэко" }
    1.times { races << "Тортлы" }
    1.times { races << "Грибы" }
    1.times { races << "Собаколюди" }
    1.times { races << "Эльфы" }
    races
  end

  def of_something_table
    of_something = []
    30.times { of_something << nil }
    1.times { of_something << "Жары" }
    1.times { of_something << "Голода" }
    1.times { of_something << "Холода" }
    1.times { of_something << "Хитрости" }
    1.times { of_something << "Прыткости" }
    1.times { of_something << "Жадности" }
    1.times { of_something << "Смелости" }
    1.times { of_something << "Мудрости" }
    1.times { of_something << "Темноты" }
    1.times { of_something << "Тишины" }
    1.times { of_something << "Луны" }
    1.times { of_something << "Света" }
    1.times { of_something << "Чистоты" }
    1.times { of_something << "Милосердия" }
    of_something
  end
end