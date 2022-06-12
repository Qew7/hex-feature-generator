class AdventureTimer < AdventurePart
  require 'colorize'

  def roll
    [
      "#{DiceRoller.roll_from_table(table)}".light_blue,
      "через",
      "#{DiceRoller.roll_dice(20) + DiceRoller.roll_dice(20)} дней".light_magenta,
    ].join(' ')
  end
  
  private
  
  def table
    table = []
    1.times { table << "Предмет партии или защитное заклинание теряет силу" }
    1.times { table << "Злобный план придет в исполнение" }
    1.times { table << "Другая партия хочет добьется той же награды или достижения что и наша партия" }
    1.times { table << "Урожай не взойдет если решение не будет найдено" }
    1.times { table << "Окружающая среда станет опаснее" }
    1.times { table << "Налог вырастет" }
    1.times { table << "Траты на жизнь станут очень высокими" }
    1.times { table << "Монстры строят или создают мощное оружие" }
    1.times { table << "Монстры или враги получат подкрепление" }
    1.times { table << "Монстры изменятся и станут сильнее" }
    1.times { table << "Монстры получат огромное подкрепление" }
    1.times { table << "Болезнь мучавшая члена партии прогрессирует" }
    1.times { table << "Пленник будет казнен судебной системой" }
    1.times { table << "Пленник будет казнен похитителями" }
    1.times { table << "Выкуп за пленника будет повышен" }
    1.times { table << "Награда установлена за выполнение задания" }
    1.times { table << "Награда уменьшится" }
    1.times { table << "#{['Снегопад', 'Песчанная буря', 'Лавина'].sample} перекроет доступ к локации" }
    1.times { table << "Определенное ценное сокровище будетуничтожено" }
    1.times { table << "Способность проникнуть или выйти из локации станет сложнее" }
    1.times { table << "Информатора раскроют" }
    1.times { table << "Персонажей раскроют или идентифицируют" }
    1.times { table << "Ресурс необходимый для выживания кончится" }
    1.times { table << "Состояние покровителя группы ухудшится" }
    1.times { table << "Сокровище потеряет ценность" }
    1.times { table << "Оно вновь пробудится" }
    1.times { table << "Начнется вторжение" }
    1.times { table << "Состоится свадьба" }
    table
  end
end