class AdventureBackstory < AdventurePart
  attr_reader :locals, :enemies

  def initialize(locals: 'Местные', enemies: 'враги')
    @locals = locals
    @enemies = enemies
  end

  def roll
    "#{when_happened} #{what_and_why}"
  end
  
  private
  
  def when_happened
    [
      rand(1..100),
      %w[часов дней месяцев лет].sample,
      'назад',
    ].join(' ')
  end

  def what_and_why
    "#{DiceRoller.roll_from_table(what_table).gsub('Местные', locals)} #{DiceRoller.roll_from_table(why_table).gsub('враги', enemies)}"
  end

  def what_table
    table = []
    1.times { table << "Местные были изменены" }
    1.times { table << "Местные победили" }
    1.times { table << "Местные были уничтожены" }
    1.times { table << "Местные покинули место" }
    1.times { table << "Местные были физически изменены" }
    1.times { table << "Постройка была завершена" }
    1.times { table << "Местные изменили свои убеждения" }
    1.times { table << "Местные были ментально изменены" }
    1.times { table << "Местные были изменены физически и ментально" }
    1.times { table << "Место стало враждебным для цивилизации" }
    1.times { table << "Место было отрезано от цивилизации" }
    1.times { table << "Местные разделились на две группы" }
    1.times { table << "Произошел природный катаклизм" }
    1.times { table << "Были использованы яды" }
    1.times { table << "Местные лидеры были уничтожены" }
    table
  end

  def why_table
    table = []
    1.times { table << "в связи с древним проклятием наложеным враги" }
    1.times { table << "из-за дикого населения враги" }
    1.times { table << "из-за негуманоидных племян дикарей враги" }
    1.times { table << "из-за спора с враги" }
    1.times { table << "из-за раскрытия неожиданой тайны враги" }
    1.times { table << "в связи с запрещенными для враги знаниями" }
    1.times { table << "из-за неожиданных фактов о враги" }
    1.times { table << "из-за болезней насланых враги" }
    1.times { table << "в связи с магическими исследованиями о враги" }
    1.times { table << "из-за странных поверий враги" }
    1.times { table << "из-за обещаний данных враги" }
    1.times { table << "из-за использования странных веществ" }
    1.times { table << "в связи с открытиями странных веществ" }
    1.times { table << "после контакта с таинственным существом" }
    1.times { table << "после религиозного/филосовского спора с #{['Местные','враги'].sample}" }
    1.times { table << "после странных ознаменований" }
    1.times { table << "из-за гордыни" }
    1.times { table << "в связи с похищением важной вещи враги" }
    1.times { table << "из-за черной магии" }
    1.times { table << "из-за войны с враги" }
    table
  end
end