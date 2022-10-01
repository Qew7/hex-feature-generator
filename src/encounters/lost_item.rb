class Encounters::LostItem < Encounter

  private

  def table
    table = []
    1.times { table << "Weapon" }
    20.times { table << "Clothing (Robe / Shirt / Pants / Boot / Glove)" }
    15.times { table << "Coins (1d4, Random Type)" }
    30.times { table << "Utensil (Fork / Knife / Cup)" }
    1.times { table << "Jewellry" }
    10.times { table << "Storage - Backpack, sack, pouch" }
    15.times { table << "Trinket" }
    3.times { table << "Leather bound diary containing trivial entries" }
    table
  end
end