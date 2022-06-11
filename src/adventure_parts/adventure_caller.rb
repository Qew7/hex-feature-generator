class AdventureCaller < AdventurePart
  require_relative 'adventure_adjective'

  def self.call(local: 'местный', enemy: 'враг')
    DiceRoller.roll_from_table(table).gsub('местный', local).gsub('враг', enemy)
  end
  
  private
  
  def self.table
    table = []
    3.times { table << "#{AdventureAdjective.call} местный" }
    1.times { table << "#{AdventureAdjective.call} враг" }
    1.times { table << "#{AdventureAdjective.call} враг перешедший на сторону местный" }
    1.times { table << "#{AdventureAdjective.call} местный перешедший на сторону враг" }
    1.times { table << "Нейтральный наблюдатель из ближайшего города" }
    1.times { table << "Встревоженый наблюдатель из ближайшего города" }
    1.times { table << "#{AdventureAdjective.call} наблюдатель из ближайшего города" }
    1.times { table << "Место действия описывает историю" }
    1.times { table << "Надписи на статуе" }
    1.times { table << "Общеизвестно" }
    table
  end
end