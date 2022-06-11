class AdventureItem < AdventurePart
  require_relative 'adventure_clue'
  
  private
  
  def table
    table = []
    20.times { table << AdventureClue.call }
    5.times { table << "Труп" }
    5.times { table << "Груз" }
    5.times { table << "Скот" }
    5.times { table << "Драгоценности" }
    5.times { table << "Магический предмет" }
    5.times { table << "Таинственный запечатаный контейнер" }
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