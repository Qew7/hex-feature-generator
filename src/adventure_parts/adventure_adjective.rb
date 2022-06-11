class AdventureAdjective < AdventurePart
  
  private
  
  def table
    table = []
    5.times { table << "Потрепаный" }
    5.times { table << "Блестящий" }
    5.times { table << "Красивый" }
    5.times { table << "Уродливый" }
    5.times { table << "Старый" }
    5.times { table << "Гнилой" }
    5.times { table << "Воняющий" }
    5.times { table << "Громкий" }
    5.times { table << "Тихий" }
    5.times { table << "Страшный" }
    5.times { table << "Скользкий" }
    5.times { table << "Светлый" }
    5.times { table << "Темный" }
    5.times { table << "Кровавый" }
    table
  end
end