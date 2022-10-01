class Factions::Age < FactionPart
  
  private
  
  def table
    table = []
    1.times { table << "Древняя" }
    1.times { table << "Старая" }
    1.times { table << "Недавняя" }
    1.times { table << "Новая" }
    table
  end
end
