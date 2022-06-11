class AdventurePerson < AdventurePart
  
  private
  
  def table
    table = []
    5.times { table << "Лидер" }
    5.times { table << "Принцесса" }
    5.times { table << "Шаман" }
    5.times { table << "Волшебник" }
    5.times { table << "Чародей" }
    5.times { table << "Волк" }
    5.times { table << "Принц" }
    5.times { table << "Следопыт" }
    5.times { table << "Торговец" }
    5.times { table << "Аристократ" }
    5.times { table << "Курьер" }
    5.times { table << "Партизан" }
    5.times { table << "Убийца" }
    5.times { table << "Дипломат" }
    5.times { table << "Приключенец" }
    5.times { table << "Бандит" }
    table
  end
end