class Factions::Type < FactionPart
  
  private
  
  def table
    table = []
    1.times { table << "Гильдия" }
    1.times { table << "Клуб" }
    1.times { table << "Племя" }
    1.times { table << "Клан" }
    1.times { table << "Школа" }
    1.times { table << "Семья" }
    table
  end
end
