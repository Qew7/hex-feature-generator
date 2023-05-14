class Dungeons::Type
  def self.generate
    %w[
      Пещера
      Подземелье
      Храм
      Кладбище
      Форт
      Лабиринт
      Тюрьма
      Лаборатория
      Шахта
    ].sample
  end
end