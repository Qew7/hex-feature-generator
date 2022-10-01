class Encounters::PastEvent < Encounter
  
  private
  
  def table
    table = []
    5.times { table << "Dead Body" }
    12.times { table << "Large pool of blood" }
    20.times { table << "Dead animal" }
    20.times { table << "Area of fire / destruction" }
    5.times { table << "Signs of ground being dug up and old sacks laying around" }
    5.times { table << "Altar + 10% Trap + 50% bloody body³" }
    15.times { table << "Campsite with a smoldering fire. A few hours old." }
    10.times { table << "Scene of recent skirmish - dead humanoids & monsters" }
    5.times { table << "Smoldering remains of a large funerial pyre and burnt body" }
    5.times { table << "Dead adventurer" }
    2.times { table << "Dead Body hanging from tree branch" }
    2.times { table << "Burnt Arcane symbols on tree / boulder" }
    2.times { table << "Giant Skull !" }
    3.times { table << "Lone riding horse with a saddle, looks injured and tired" }
    table
  end
end