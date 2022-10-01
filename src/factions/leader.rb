class Factions::Leader < FactionPart
  
  private
  
  def table
    table = []
    1.times { table << "Крутой воин" }
    table
  end
end
