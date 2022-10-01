class AdventureGenerator
  require_relative 'src/libraries'
  require_relative 'faction_generator'

  def self.generate(faction: FactionGenerator.generate, enemy: FactionGenerator.generate)
    {
      faction: faction,
      enemy: enemy,
      backstory: Adventures::Backstory.roll(locals: faction[:name], enemies: enemy[:name]),
      enemy_motivation: Adventures::Motivation.roll,
      timer: Adventures::Timer.roll,
      clue: clue,
      advantage: Adventures::Advantage.roll,
      reward: Adventures::Reward.roll,
      challenge: Adventures::Challenge.roll(faction: [faction[:name], enemy[:name]].sample),
      caller: Adventures::Caller.roll(local: faction[:name], enemy: enemy[:name])
    }
  end

  private

  def self.clue
    [
      Adventures::Adjective.roll,
      Adventures::Clue.roll,
    ].join(' ')
  end
end
