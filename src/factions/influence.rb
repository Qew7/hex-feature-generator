class Factions::Influence < FactionPart
  
  private
  
  def table
    table = []
    1.times { table << "Очень влиятельная" }
    1.times { table << "Средней влиятельности" }
    1.times { table << "Без особого влияния" }
    table
  end
end
