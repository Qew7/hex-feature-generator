class Encounters::NaturalStructure < Encounter
  
  private
  
  def table
    table = []
    10.times { table << "Пещера" }
    1.times { table << "Рукотворный холм" }
    2.times { table << "Светащаяся грибница" }
    3.times { table << "Могила животных" }
    4.times { table << "Гнездо животных и #{rand(1..5)} яиц животного" }
    4.times { table << "Большое озеро" }
    4.times { table << "Растущих фруктов на деревьях хватит на пропитание на день" }
    3.times { table << "Большое поле диких цветов" }
    5.times { table << "Большое древнее дерево окруженое кругом из #{rand(6..12)} деревьев поменьше" }
    5.times { table << "Small Lake^^" }
    4.times { table << "Пахнет прожухлым запахом серы" }
    5.times { table << "Large scattered boulders and rocky outcrops" }
    6.times { table << "Spring (drinkable water)" }
    5.times { table << "Hot Spring (50% chance of being drinkable)" }
    34.times { table << "Dressing: Plains, Patrolled Wilderness, Forest, Jungle, Swamp, Desert, Farmland, Mountains, Hills, Coast, Arctic" }
    6.times { table << "Ancient Crater (1d3 x 101’ feet across)" }
    table
  end
end