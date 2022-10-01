class Encounters::NaturalStructure < Encounter
  
  private
  
  def table
    table = []
    10.times { table << "Cave" }
    1.times { table << "Dug Mound - Buried Sack containing a Random Magic Item" }
    2.times { table << "Glowing fungus - worth 50gp to a Herbalist" }
    3.times { table << "Animal Graveyard - lots of bones from many large animals" }
    4.times { table << "Animal Nest - 1d4 rare eggs worth 20gp each" }
    4.times { table << "Large Pond^^" }
    4.times { table << "Enough fruit to provide 1 days provisions for the whole party" }
    3.times { table << "A large field of wild flowers" }
    5.times { table << "A huge ancient tree surrounded by a circle of 12 smaller trees" }
    5.times { table << "Small Lake^^" }
    4.times { table << "A foul, sulphur-like smell persists in this area" }
    5.times { table << "Large scattered boulders and rocky outcrops" }
    6.times { table << "Spring (drinkable water)" }
    5.times { table << "Hot Spring (50% chance of being drinkable)" }
    34.times { table << "Dressing: Plains, Patrolled Wilderness, Forest, Jungle, Swamp, Desert, Farmland, Mountains, Hills, Coast, Arctic" }
    6.times { table << "Ancient Crater (1d3 x 101’ feet across)" }
    table
  end
end