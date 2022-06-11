class AdventureGenerator
  require_relative 'src/libraries'

  def self.generate
    {
      backstory: AdventureBackstory.call,
      enticement: AdventureEnticement.call,
      challenge: AdventureChallenge.call,
      timer: AdventureTimer.call,
      advantage: AdventureAdvantage.call,
    }
  end
end