class Encounters::Npc < Encounter

  private

  def table
    table = []
    9.times { table << "Travelling Merchant Wagon (1d4 commoners and 50% chance of 1d2 guards)¹" }
    6.times { table << "Hunting Party (1d4 scouts or tribal warriors)" }
    3.times { table << "Druid" }
    3.times { table << "Explorers (1d3 scouts - 50% chance of mounts)" }
    6.times { table << "3d2 adventurers (80% chance of mounts):" }
    6.times { table << "Bard (80% chance of a mount)" }
    11.times { table << "Wagon train (1d4 commoners and 3d2 guards)¹" }
    5.times { table << "Pilgrams (1d3 acolytes - Can offer healing)" }
    4.times { table << "Suspicious Character (50% chance of mount)" }
    3.times { table << "Unconscious humanoid tied up (victim of bandits)):" }
    2.times { table << "Mysterious wizard (mage), sitting and reading a book" }
    5.times { table << "Travelling gypsies in a brightly painted wagon (4d2 commoners)" }
    3.times { table << "Lost caravan guard (caravan got attacked - now seperated)" }
    4.times { table << "Shunned one (commoner) in dirty rags:" }
    6.times { table << "Barbarian (berserker)" }
    8.times { table << "Ranger (scout)" }
    2.times { table << "Naked humanoid laying on ground, confused and covered in scratche - 50% male or female) (were-creature)" }
    2.times { table << "Naked humanoid swiming in nearby water - 50% male or female (commoner)" }
    1.times { table << "Naked humanoid swiming in water (50% Succubus or Incubus)" }
    6.times { table << "Mounted Watch Patrol (2d3 guards):" }
    6.times { table << "Hunting Party (1d4 scouts or tribal warriors)" }
    table
  end
end