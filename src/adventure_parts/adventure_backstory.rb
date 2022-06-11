class AdventureBackstory < AdventurePart
  def self.call
    "#{when_happened} #{what_and_why}"
  end
  
  private
  
  def self.when_happened
    [
      rand(1..100),
      %w[часов дней месяцев лет].sample,
      'назад',
    ].join(' ')
  end

  def self.what_and_why
    "#{DiceRoller.roll_from_table(what_table)} #{DiceRoller.roll_from_table(why_table)}"
  end

  def self.what_table
    table = []
    5.times { table << "Местные были изменены" }
    5.times { table << "Местные победили" }
    5.times { table << "Местные были уничтожены" }
    5.times { table << "Местные покинули место" }
    5.times { table << "Местные были физически изменены" }
    5.times { table << "Постройка была завершена" }
    5.times { table << "Местные изменили свои убеждения" }
    5.times { table << "Местные были ментально изменены" }
    5.times { table << "Местные были изменены физически и ментально" }
    5.times { table << "Место стало враждебным для цивилизации" }
    5.times { table << "Место было отрезано от цивилизации" }
    5.times { table << "Местные разделились на две группы" }
    5.times { table << "Произошел природный катаклизм" }
    5.times { table << "Были использованы яды" }
    5.times { table << "Местные лидеры были уничтожены" }
    table
  end

  def self.why_table
    table = []
    5.times { table << "в связи с древним проклятием" }
    5.times { table << "из-за дикого населения" }
    5.times { table << "из-за негуманоидных племян дикарей" }
    5.times { table << "из-за спора между монстрами/людьми" }
    5.times { table << "из-за раскрытия неожиданой тайны" }
    5.times { table << "в связи с запрещенными знаниями" }
    5.times { table << "из-за неожиданных фактов" }
    5.times { table << "из-за болезней" }
    5.times { table << "в связи с магическими исследованиями" }
    5.times { table << "из-за странных поверий" }
    5.times { table << "из-за обещаний данных могучим существам" }
    5.times { table << "из-за использования странных веществ" }
    5.times { table << "в связи с открытиями странных веществ" }
    5.times { table << "после контакта с таинственным существом" }
    5.times { table << "после религиозного/филосовского спора" }
    5.times { table << "после странных ознаменований" }
    5.times { table << "из-за гордыни" }
    5.times { table << "в связи с похищением важной вещи" }
    5.times { table << "из-за черной магии" }
    5.times { table << "из-за войны" }
    table
  end
end