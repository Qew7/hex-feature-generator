class AdventureCaller < AdventurePart
  require_relative 'adventure_adjective'

  attr_reader :local, :enemy

  def initialize(local: 'местный', enemy: 'враг')
    @local = local
    @enemy = enemy
  end

  def roll
    DiceRoller.roll_from_table(table).gsub('местный', local.white).gsub('враг', enemy.light_red).strip
  end
  
  private
  
  def table
    table = []
    3.times { table << "#{AdventureAdjective.roll} местный" }
    1.times { table << "#{AdventureAdjective.roll} враг" }
    1.times { table << "#{AdventureAdjective.roll} враг перешедший на сторону местный" }
    1.times { table << "#{AdventureAdjective.roll} местный перешедший на сторону враг" }
    1.times { table << "Нейтральный наблюдатель из ближайшего города" }
    1.times { table << "Встревоженый наблюдатель из ближайшего города" }
    1.times { table << "#{AdventureAdjective.roll} наблюдатель из ближайшего города" }
    1.times { table << "Место действия описывает историю" }
    1.times { table << "Надписи на статуе" }
    1.times { table << "Общеизвестно" }
    table
  end
end