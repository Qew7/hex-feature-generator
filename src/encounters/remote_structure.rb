class Encounters::RemoteStructure < Encounter
  
  private
  
  def table
    table = []
    9.times { table << "Single House (If road hex, 50% chance of being on the road.)" }
    3.times { table << "Small Castle - Dressing, name, flavour, lord" }
    3.times { table << "Large Castle - Dressing, name, flavour, lord" }
    4.times { table << "Temple" }
    5.times { table << "Travellers Respite Hut" }
    15.times { table << "Farmstead and felds. If Road Hex:" }
    10.times { table << "Stone Well" }
    5.times { table << "Tower" }
    5.times { table << "Shallow Grave with makeshift tombstone" }
    3.times { table << "Statue to (1d2 a God or:)" }
    3.times { table << "Totem - thick wooden pole inscribed with:" }
    13.times { table << "Inn / Road House (If not on a roax hex, re-roll)" }
    3.times { table << "Mine (1d4 Humans, Goblins, Dwarves, Kobolds)" }
    4.times { table << "Altar (10% Trapped)" }
    4.times { table << "Stone Dias with Pillars" }
    5.times { table << "Outlaw / Criminal Camp (Tents)" }
    5.times { table << "Bandit Camp (Tents)" }
    table
  end
end