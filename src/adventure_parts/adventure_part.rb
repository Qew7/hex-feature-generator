class AdventurePart
  require_relative "../dice_roller"

  def self.call
    self.new.get_proc
  end

  def get_proc
    DiceRoller.roll_from_table(table)
  end
end