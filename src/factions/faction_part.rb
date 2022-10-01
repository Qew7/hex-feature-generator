class FactionPart
  require_relative "../dice_roller"

  def self.roll(args={})
    self.new(**args).roll
  end

  def roll
    DiceRoller.roll_from_table(self.table)
  end
end