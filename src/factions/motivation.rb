class Factions::Motivation < FactionPart
  
  private
  
  def table
    table = []
    1.times { table << "Традиции" }
    1.times { table << "Богатство" }
    1.times { table << "Могущество" }
    1.times { table << "Исполнение пророчества" }
    1.times { table << "Выживание" }
    1.times { table << "Сохранение тайны" }
    1.times { table << "Защита другой фракции" }
    1.times { table << "Уничтожение другой фракции" }
    1.times { table << "Производство искусств" }
    1.times { table << "Охота на чудовищ" }
    1.times { table << "Изучение древних знаний" }
    1.times { table << "Запись истории" }
    1.times { table << "Предотвращение сбычи пророчества" }
    1.times { table << "Открытие новых мест" }
    1.times { table << "Изучение флоры" }
    1.times { table << "Изучение фауны" }
    1.times { table << "Написание песен" }
    1.times { table << "Добыча ресурсов" }
    table
  end
end
