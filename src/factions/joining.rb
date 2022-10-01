class Factions::Joining < FactionPart
  
  private
  
  def table
    table = []
    1.times { table << "Требуется рекомендация нескольких участников" }
    1.times { table << "Требуется высокий уровень навыка" }
    1.times { table << "Требуется подходящая раса" }
    1.times { table << "Требуется подходящий класс" }
    1.times { table << "Требуется признание лидером" }
    table
  end
end
