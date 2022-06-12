class AdventureMotivation < AdventurePart
  require_relative 'adventure_item'
  
  private
  
  def table
    table = []
    1.times { table << "Были скорблены насмешками" }
    1.times { table << "Хотят получить #{AdventureItem.roll}" }
    1.times { table << "Получили приказ лидера" }
    1.times { table << "Получили приказ духовного лидера" }
    1.times { table << "Ответили на затаившуюся древнюю обиду" }
    1.times { table << "Пытались освободиться" }
    1.times { table << "Пытались приструнить" }
    1.times { table << "Голодали" }
    1.times { table << "Пытались захватить территории" }
    1.times { table << "Хотели устроить геноцид" }
    1.times { table << "Ради веселья" }
    1.times { table << "Были пьяны" }
    1.times { table << "Находились под действиями наркотиков" }
    1.times { table << "Были подкуплены извне" }
    1.times { table << "Следовали своей природе" }
    table
  end
end