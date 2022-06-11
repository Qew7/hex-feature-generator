class AdventurePerson < AdventurePart
  
  private
  
  def table
    table = []
    1.times { table << "Лидер" }
    1.times { table << "Принцесса" }
    1.times { table << "Шаман" }
    1.times { table << "Волшебник" }
    1.times { table << "Чародей" }
    1.times { table << "Волк" }
    1.times { table << "Принц" }
    1.times { table << "Следопыт" }
    1.times { table << "Торговец" }
    1.times { table << "Аристократ" }
    1.times { table << "Курьер" }
    1.times { table << "Партизан" }
    1.times { table << "Убийца" }
    1.times { table << "Дипломат" }
    1.times { table << "Приключенец" }
    1.times { table << "Бандит" }
    table
  end
end