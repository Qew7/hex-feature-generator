class Factions::Stability < FactionPart
  
  private
  
  def table
    table = []
    1.times { table << "Стабильная" }
    1.times { table << "Не стабильная" }
    table
  end
end
