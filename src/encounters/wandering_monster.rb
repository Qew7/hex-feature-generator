class Encounters::WanderingMonster < Encounter
  
  private
  
  def table
    table = []
    1.times { table << "Роль гуляющего монстра" }
    table
  end
end