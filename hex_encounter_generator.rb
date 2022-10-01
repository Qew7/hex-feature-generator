class HexEncounterGenerator
  require_relative 'src/libraries'

  def self.generate(explored: false)
    return 'Ничего не произошло' if DiceRoller.roll_dice(3) != 3
    feature = DiceRoller.roll_from_table(selected_table(explored))
    feature.is_a?(String) ? feature : feature.call
  end

  private

  def self.selected_table(explored)
    explored ? explored_hex_table : non_explored_hex_table
  end

  def self.non_explored_hex_table
    table = []
    9.times { table << Encounters::Npc.roll }
    10.times { table << Encounters::AnimalHerd.roll }
    20.times { table << Encounters::WanderingMonster.roll }
    5.times { table << Encounters::Lair.roll }
    10.times { table << Encounters::RemoteStructure.roll }
    15.times { table << Encounters::RuinedStructure.roll }
    9.times { table << Encounters::PastEvent.roll }
    10.times { table << Encounters::CurrentEvent.roll }
    1.times { table << Encounters::LostItem.roll }
    8.times { table << Encounters::NaturalStructure.roll }
    3.times { table << Encounters::RemarkableFeature.roll }
    table
  end

  def self.explored_hex_table
    table = []
    15.times { table << Encounters::Npc.roll }
    15.times { table << Encounters::AnimalHerd.roll }
    36.times { table << Encounters::WanderingMonster.roll }
    15.times { table << Encounters::PastEvent.roll }
    15.times { table << Encounters::CurrentEvent.roll }
    1.times { table << Encounters::LostItem.roll }
    3.times { table << Encounters::RemarkableFeature.roll }
    table
  end
end
