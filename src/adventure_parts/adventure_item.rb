class AdventureItem < AdventurePart
  
  private
  
  def table
    table = []
    5.times { table << "Труп" }
    5.times { table << "Груз" }
    5.times { table << "Скот" }
    5.times { table << "Подсказка" }
    5.times { table << "Доказательсто вины" }
    5.times { table << "Доказательство невиновности" }
    5.times { table << "Драгоценности" }
    5.times { table << "Магический предмет" }
    5.times { table << "Карта" }
    5.times { table << "Сообщение" }
    5.times { table << "Таинственный запечатаный контейнер" }
    5.times { table << "Доказательства владения" }
    5.times { table << "Религиозный предмет" }
    5.times { table << "Статуэтка" }
    5.times { table << "Меч" }
    5.times { table << "Топор" }
    5.times { table << "Посох" }
    5.times { table << "Череп" }
    5.times { table << "Алмаз" }
    5.times { table << "Зуб" }
    table
  end
end