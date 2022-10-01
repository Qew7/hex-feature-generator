class Factions::Reputation < FactionPart
  
  private
  
  def table
    table = []
    1.times { table << "Их боятся" }
    1.times { table << "Их уважают" }
    1.times { table << "О них не знают" }
    1.times { table << "О них мало кто знает" }
    1.times { table << "Их существование не подтверждено" }
    5.times { table << "Нормальная" }
    table
  end
end
