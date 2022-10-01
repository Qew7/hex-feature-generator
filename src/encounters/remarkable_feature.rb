class Encounters::RemarkableFeature < Encounter
  
  private
  
  def table
    table = []
    5.times { table << "Stone Well engraved with arcane runes, water gives:" }
    5.times { table << "Stone Well with symbol of good god, water gives:" }
    5.times { table << "Stone Well with symbol of evil god, water gives:" }
    5.times { table << "Ancient Stone Pillar - Glowing glyphs, if touched²" }
    5.times { table << "Ancient, twisted black tree, red liquid oozes:" }
    5.times { table << "Moonwell - Heals for 1d8 + Wisdom modifier or Poisons for 1d8 if the person has threatened nature recently. If the moon is full, also provides the effects of a Lesser Restoration spell." }
    5.times { table << "Earthquake - a small crack opens in ground" }
    5.times { table << "Meteor Strike - As per the spell" }
    5.times { table << "Arcane Diffusement - High Pitch Hum ## (20% Spell Failure. Cant use Spell Slots above 1st Level)" }
    5.times { table << "Arcane Enrichment - Low Pitch Hum ## (Spell DCs +5. Spells treated as Spell Slot +1)" }
    table
  end
end