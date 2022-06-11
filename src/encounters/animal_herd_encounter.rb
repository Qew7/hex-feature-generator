class AnimalHerdEncounter < Encounter
  
    private
  
    def table
      table = []
      8.times { table << "#{ 4 * DiceRoller.roll_dice(4)} волков" }
      10.times { table << "#{ 3 * DiceRoller.roll_dice(4)} кабанов" }
      5.times { table << "#{ 3 * DiceRoller.roll_dice(4)} ястребов" }
      22.times { table << "#{ 5 * DiceRoller.roll_dice(4)} оленей" }
      14.times { table << "#{ 4 * DiceRoller.roll_dice(4)} диких лошадей" }
      20.times { table << "#{ 5 * DiceRoller.roll_dice(4)} лосей" }
      10.times { table << "#{ 5 * DiceRoller.roll_dice(4)} гиен" }
      10.times { table << "#{ 5 * DiceRoller.roll_dice(3)} шакалов" }
      1.times { table << "#{ 4 * DiceRoller.roll_dice(3)} слонов" }
      table
    end
  end