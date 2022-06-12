class AdventureItem < AdventurePart
  require_relative 'adventure_clue'
  
  private
  
  def table
    table = []
    20.times { table << AdventureClue.roll }
    1.times { table << "Труп" }
    1.times { table << "Груз" }
    1.times { table << "Скот" }
    1.times { table << "Драгоценности" }
    1.times { table << "Магический предмет" }
    1.times { table << "Таинственный запечатаный контейнер" }
    1.times { table << "Религиозный предмет" }
    1.times { table << "Статуэтка" }
    1.times { table << "Меч" }
    1.times { table << "Топор" }
    1.times { table << "Посох" }
    1.times { table << "Череп" }
    1.times { table << "Алмаз" }
    1.times { table << "Зуб" }
    table
  end
end