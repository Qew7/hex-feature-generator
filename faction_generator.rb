class FactionGenerator
  require_relative 'src/libraries'

  def self.generate
    {
      name: Factions::Name.roll,
      type: Factions::Type.roll,
      motivation: Factions::Motivation.roll,
      reputation: Factions::Reputation.roll,
      stability: Factions::Stability.roll,
      methods: Factions::Methods.roll,
      age: Factions::Age.roll,
      leader: Factions::Leader.roll,
      joining: Factions::Joining.roll,
      influence: Factions::Influence.roll,
    }
  end
end
