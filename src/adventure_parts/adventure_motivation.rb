class AdventureMotivation < AdventurePart
  require_relative 'adventure_item'
  
  private
  
  def table
    table = []
    1.times { table << "Оскорблены насмешками" }
    1.times { table << "Хотят получить #{AdventureItem.roll}" }
    1.times { table << "Приказ лидера" }
    1.times { table << "Приказ духовного лидера" }
    1.times { table << "Затаившаяся древняя обида" }
    1.times { table << "Попытка освободиться" }
    1.times { table << "Попытка приструнить" }
    1.times { table << "Голод" }
    1.times { table << "Захват территории" }
    1.times { table << "Геноцид" }
    1.times { table << "Ради веселья" }
    1.times { table << "Алкоголь" }
    1.times { table << "Наркотические грибы" }
    1.times { table << "Подкуп извне" }
    1.times { table << "Такова их природа" }
    table
  end
end