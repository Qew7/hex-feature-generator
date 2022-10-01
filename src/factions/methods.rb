class Factions::Methods < FactionPart
  
  private
  
  def table
    table = []
    1.times { table << "Дипломатия" }
    1.times { table << "Разбой" }
    1.times { table << "Интриги" }
    1.times { table << "Воровство" }
    1.times { table << "Традиции" }
    table
  end
end
