class AdventureClue < AdventurePart
  
  private
  
  def table
    table = []
    1.times { table << "Записка" }
    1.times { table << "Книга" }
    1.times { table << "Слух" }
    1.times { table << "Монета" }
    1.times { table << "Рисунок" }
    1.times { table << "Статуя" }
    1.times { table << "Письмо" }
    1.times { table << "Карта" }
    1.times { table << "Тело" }
    1.times { table << "Часть тела" }
    1.times { table << "Ключ" }
    1.times { table << "Татуировка" }
    1.times { table << "След" }
    1.times { table << "Пятно крови" }
    1.times { table << "Запах" }
    1.times { table << "Религиозный предмет" }
    1.times { table << "Таинственный запечатаный контейнер" }
    table
  end
end
