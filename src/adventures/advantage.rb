class Adventures::Advantage < AdventurePart
  
  private
  
  def table
    table = []
    1.times { table << "Некоторые позиции лучше защитить из-за высоты" }
    1.times { table << "С некоторых позиций легче атаковать из-за высоты" }
    1.times { table << "Падающие объекты могут помочь" }
    1.times { table << "Падающие предметы перекрывают пути" }
    1.times { table << "Непредсказуемые опасности в определенных местах (например гейзеры)" }
    1.times { table << "Предсказуемые опасности в определенных местах (ловушки с шипами на плитах)" }
    1.times { table << "Крупные опасности требующие сложного спасброска для получения преимущества" }
    1.times { table << "Крупные опасности окруженные труднодоступной местностью с риском для жизни" }
    1.times { table << "Зоны в которых способности не действуют" }
    1.times { table << "Зоны в которых способности ослаблены" }
    1.times { table << "Требование определенного необычного оружия" }
    1.times { table << "Зоны в которых способности изменены" }
    1.times { table << "Зоны с изменчивой топологией (например стены меняют положение)" }
    1.times { table << "Зоны с поднимающимися платформами" }
    1.times { table << "Зона с меняющейся видимостью (например густой туман)" }
    1.times { table << "Ситуация в которой требуется использования необычного средства передвижения" }
    1.times { table << "Ситуация где эфекты передвижения имеют элемент рандома (поломаный телепорт, порывы ветра)" }
    1.times { table << "Ситуация где взрывчатка может уничтожить стены" }
    1.times { table << "Скользкий пол" }
    1.times { table << "Очевидные ловушки" }
    1.times { table << "Лестницы, этажи" }
    1.times { table << "Зоны с точками 'победы'" }
    1.times { table << "Зоны с вещами которые усилывают или лечат" }
    1.times { table << "Зоны с крутым оружием в труднодоступных местах" }
    1.times { table << "Рычаги или кнопки создающие различные эффекты" }
    1.times { table << "Зоны где заклинания имеют необычные эффекты" }
    1.times { table << "Низкая или отсутствие гравитации" }
    1.times { table << "Зона где требуется поддержка жизни" }
    1.times { table << "Вариабельный уровень гравитации" }
    1.times { table << "Требование выполнение определенного поведения" }
    table
  end
end