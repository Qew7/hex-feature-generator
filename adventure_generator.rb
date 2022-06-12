class AdventureGenerator
  require_relative 'src/libraries'

  def self.generate(faction: FactionName.generate, enemy: FactionName.generate)
    {
      faction: faction,
      enemy: enemy,
      backstory: AdventureBackstory.roll(locals: faction, enemies: enemy),
      enemy_motivation: AdventureMotivation.roll,
      timer: AdventureTimer.roll,
      clue: clue,
      advantage: AdventureAdvantage.roll,
      reward: AdventureReward.roll,
      challenge: AdventureChallenge.roll(faction: enemy),
      caller: AdventureCaller.roll(local: faction, enemy: enemy)
    }
  end

  private

  def self.clue
    [
      AdventureAdjective.roll,
      AdventureClue.roll,
    ].join(' ')
  end
end
