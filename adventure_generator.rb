class AdventureGenerator
  require_relative 'src/libraries'

  def self.generate(faction: FactionName.call, enemy: FactionName.call)
    {
      faction: faction,
      enemy: enemy,
      backstory: AdventureBackstory.call(locals: faction, enemies: enemy),
      enemy_motivation: AdventureMotivation.call,
      timer: AdventureTimer.call,
      clue: clue,
      advantage: AdventureAdvantage.call,
      reward: AdventureReward.call,
      challenge: AdventureChallenge.call(faction: enemy),
      caller: AdventureCaller.call(local: faction, enemy: enemy)
    }
  end

  private

  def self.clue
    [
      AdventureAdjective.call,
      AdventureClue.call,
    ].join(' ')
  end
end
