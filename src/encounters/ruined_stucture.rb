class Encounters::RuinedStructure < Encounter
  
  private
  
  def table
    table = []
    4.times { table << "Dry Well" }
    5.times { table << "Ancient Stone Pillars" }
    5.times { table << "Collasped and half walls" }
    5.times { table << "Scattered stone blocks" }
    5.times { table << "Massive Ancient Statues: 1d4, fallen. (See Remote Structres: 60-62)" }
    10.times { table << "Small Ruins (33% Haunted)" }
    9.times { table << "Ruined Building" }
    6.times { table << "Abandoned Mine" }
    5.times { table << "Ruined Small House (25% Cellar)" }
    5.times { table << "Ruined Small Tower (50% Dungeon)" }
    5.times { table << "Ruined Small Keep (75% Dungeon)" }
    5.times { table << "Ruined Stone Walls & Stairs into Small Dungeon" }
    5.times { table << "Abandonded cottage" }
    4.times { table << "Massive Ancient Statues: 1d4. (See Remote Structres: 60-62)" }
    17.times { table << "Large Ruins (33% Haunted)" }
    5.times { table << "Ancient Mausoleum" }
    table
  end
end