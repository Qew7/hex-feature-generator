class Dungeons::Name
  require_relative 'type'

  def self.generate
    "#{adjective} #{noun}"
  end

  private

  def self.adjective
    %w[
      Мясорубочная
      Смертельная
      Ночная
      Ужасная
      Адская
      Чумная
      Грешная
      Мучительная
      Темная
      Убийственная
      Пыточная
      Рабская
    ].sample
  end

  def self.noun
    Dungeons::Type.generate
  end
end