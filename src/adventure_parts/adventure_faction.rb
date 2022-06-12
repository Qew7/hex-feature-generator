class AdventureFaction < AdventurePart
  require_relative "../names/faction_name"
  
  private
  
  def table
    table = []
    5.times { table << "" }
    table
  end

  def faction_name
    FactionName.call
  end
end