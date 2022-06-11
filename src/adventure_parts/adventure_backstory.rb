class AdventureBackstory < AdventurePart
  def self.call(locals: 'Местные', enemies: 'враги')
    "#{when_happened} #{what_and_why(locals, enemies)}"
  end
  
  private
  
  def self.when_happened
    [
      rand(1..100),
      %w[часов дней месяцев лет].sample,
      'назад',
    ].join(' ')
  end

  def self.what_and_why(locals, enemies)
    "#{DiceRoller.roll_from_table(what_table).gsub('Местные', locals)} #{DiceRoller.roll_from_table(why_table).gsub('враги', enemies)}"
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
    5.times { table << "в связи с древним проклятием наложеным враги" }
    5.times { table << "из-за дикого населения враги" }
    5.times { table << "из-за негуманоидных племян дикарей враги" }
    5.times { table << "из-за спора с враги" }
    5.times { table << "из-за раскрытия неожиданой тайны враги" }
    5.times { table << "в связи с запрещенными для враги знаниями" }
    5.times { table << "из-за неожиданных фактов о враги" }
    5.times { table << "из-за болезней насланых враги" }
    5.times { table << "в связи с магическими исследованиями о враги" }
    5.times { table << "из-за странных поверий враги" }
    5.times { table << "из-за обещаний данных враги" }
    5.times { table << "из-за использования странных веществ" }
    5.times { table << "в связи с открытиями странных веществ" }
    5.times { table << "после контакта с таинственным существом" }
    5.times { table << "после религиозного/филосовского спора с #{['Местные','враги'].sample}" }
    5.times { table << "после странных ознаменований" }
    5.times { table << "из-за гордыни" }
    5.times { table << "в связи с похищением важной вещи враги" }
    5.times { table << "из-за черной магии" }
    5.times { table << "из-за войны с враги" }
    table
  end
end