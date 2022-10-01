class Adventures::Adjective < AdventurePart
  
  private
  
  def table
    table = []
    10.times { table << nil }
    1.times { table << "Потрепаный" }
    1.times { table << "Блестящий" }
    1.times { table << "Красивый" }
    1.times { table << "Уродливый" }
    1.times { table << "Старый" }
    1.times { table << "Гнилой" }
    1.times { table << "Воняющий" }
    1.times { table << "Громкий" }
    1.times { table << "Тихий" }
    1.times { table << "Страшный" }
    1.times { table << "Скользкий" }
    1.times { table << "Светлый" }
    1.times { table << "Темный" }
    1.times { table << "Кровавый" }
    table
  end
end