class CurrentEventEncounter < Encounter
  require_relative 'animal_herd_encounter'
  
  private
  
  def table
    table = []
    1.times { table << "Fire covering 1d6 (50% yards or 50% miles) $" }
    7.times { table << "#{AnimalHerdEncounter.call} напали на женщину и ребенка" }
    10.times { table << "Грабители напали на #{ DiceRoller.roll_dice(2)} путешественника" }
    10.times { table << "Монстр напал на #{ DiceRoller.roll_dice(2)} путешественника" }
    10.times { table << "#{AnimalHerdEncounter.call} доедают метрвое тело" }
    35.times { table << "Minor Event:" }
    5.times { table << "Мимо пролетает монстр с трупом в теле" }
    5.times { table << "Дуэль двух волшебников" }
    5.times { table << "#{ DiceRoller.roll_dice(3) + 4} культиста вокруг голой женщины на алтаре" }
    9.times { table << "#{ DiceRoller.roll_dice(4)} заключенных пытающиеся убежать от #{ DiceRoller.roll_dice(2) + 2} стражников" }
    3.times { table << "#{ DiceRoller.roll_dice(3) + 2} воришки раскапывают сокровище" }
    table
  end
end