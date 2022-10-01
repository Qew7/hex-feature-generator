class Factions::Name < FactionPart
  
  private

  def self.roll(args={})
    Names::FactionName.generate
  end
end
