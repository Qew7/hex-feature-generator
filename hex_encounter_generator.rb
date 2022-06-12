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
    9.times { table << NpcEncounter.roll }
    10.times { table << AnimalHerdEncounter.roll }
    20.times { table << WanderingMonsterEncounter.roll }
    5.times { table << LairEncounter.roll }
    10.times { table << RemoteStructureEncounter.roll }
    15.times { table << RuinedStructureEncounter.roll }
    9.times { table << PastEventEncounter.roll }
    10.times { table << CurrentEventEncounter.roll }
    1.times { table << LostItemEncounter.roll }
    8.times { table << NaturalStructureEncounter.roll }
    3.times { table << RemarkableFeatureEncounter.roll }
    table
  end

  def self.explored_hex_table
    table = []
    15.times { table << NpcEncounter.roll }
    15.times { table << AnimalHerdEncounter.roll }
    36.times { table << WanderingMonsterEncounter.roll }
    15.times { table << PastEventEncounter.roll }
    15.times { table << CurrentEventEncounter.roll }
    1.times { table << LostItemEncounter.roll }
    3.times { table << RemarkableFeatureEncounter.roll }
    table
  end
end
