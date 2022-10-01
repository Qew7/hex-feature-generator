class Encounters::Lair < Encounter

  private

  def table
    table = []
    75.times { table << DiceRoller.roll_from_table(common_lairs_table) }
    20.times { table << DiceRoller.roll_from_table(uncommon_lairs_table) }
    5.times { table << DiceRoller.roll_from_table(legendary_lairs_table) }
    table
  end
  
  def common_lairs_table
    table = []
    13.times { table << "1d4 x 10 bugbears	Forrests / Hills / Mountains	Caves / Dungeons" }
    13.times { table << "2d4 x 10 gnolls	Any (Not Snows / Marshes)	Caves / Dungeons / Ruins" }
    13.times { table << "5d3 x 10 goblins	Forrests / Hills / Mountains	Caves / Dungeons / Ruins" }
    13.times { table << "2d4 x 10 hobgoblins	Any (Not Marshes, Deserts)	Caves / Dungeons / Ruins / Buildings" }
    16.times { table << "3d4 x 10 Kobolds	Forrests / Hills / Mountains	Caves / Dungeons / Tunnels" }
    14.times { table << "2d4 x 10 Lizardfolk	Marshes/Coastal/Lakes	Huts" }
    15.times { table << "2d4 x 10 Orcs	Any (Not Marshes, Deserts)	Caves / Dungeons / Ruins / Defeated Villages" }
    table
  end
  
  def uncommon_lairs_table
    table = []
    30.times { table << "1d2 x 10 ankhegs	Hills / Mountains	Caves / Constructed Tunnels" }
    10.times { table << "3d4 x 10 merfolk	Ocean (min 3 hexes from land)	Undersea City" }
    25.times { table << "Roc	Mountains (min 3 hexes from civilized)	Caves" }
    25.times { table << "Troll	Forrests / Hills / Mountains	Caves" }
    10.times { table << "2d2 x 10 yuan-ti	Marsh / Jungles (min 3 hexes from civilized)	City" }
    table
  end
  
  def legendary_lairs_table
    table = []
    1.times { table << "Aboleth	Ocean or Deep Lake (min 4 hexes from land)	Deep Cave with water	1 mile" }
    4.times { table << "Beholder (10% Death Tyrant)	Any (Dungeon / Caves)	Abandoned Temples / Ruins	1 mile" }
    3.times { table << "Demi-Lich	Any	Dungeon / Temple / Ruins	Lair" }
    6.times { table << "Black Dragon	Marsh / Jungle / Forrests (Heavy)	Large Ruins	6 miles" }
    6.times { table << "Blue Dragon	Barren / Mountain	Ruins / Caves	6 miles" }
    6.times { table << "Green Dragon	Forrests (Heavy) / Marsh / Jungle / Snow	Caves (esp near water)	1 mile" }
    7.times { table << "Red Dragon	Mountain	Deep caves (esp near lava)	6 miles" }
    8.times { table << "White Dragon	Snow	Caves	6 miles" }
    7.times { table << "Brass Dragon	Any	Large Ruins / Open Caves	6 miles" }
    7.times { table << "Bronze Dragon	Coastal	Caves	6 miles" }
    8.times { table << "Copper Dragon	Hills / Mountains	Caves	6 miles" }
    6.times { table << "Gold Dragon	Rivers / Lakes / any near water	Caves	6 miles" }
    6.times { table << "Silver Dragon	Mountains	Caves / Ruins / Mines	6 miles" }
    3.times { table << "Kraken	Deep Ocean	Cave	6 miles" }
    1.times { table << "Lich	Any	Ruins / Towers / Tombs / Temple	Lair" }
    5.times { table << "Mummy Lord	Any (not Snow, Jungle, or Marsh)	Ancient Temple or Tomb	Lair" }
    9.times { table << "Unicorn	Forrests	Ruins / Clearings	Lair" }
    6.times { table << "Vampire	Any	Castle / Forts / Manor	1 mile" }
    table
  end
end