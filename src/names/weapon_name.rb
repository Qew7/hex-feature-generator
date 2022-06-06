class WeaponName < Name
  def generate(type: nil, material: nil, size: nil, title: nil, effect: nil, special: nil)
    @type = type
    @material = material
    @size = size
    @tittle = title
    @effect = effect
    @special = special
    send(weapon_rarity)
  end

  private

  def weapon_rarity_table 
    rarity = []
    75.times { rarity << :common }
    15.times { rarity << :uncommon }
    10.times { rarity << :rare }
    5.times { rarity << :very_rare }
    1.times { rarity << :legendary }
    rarity
  end

  def weapon_rarity
    DiceRoller.roll_from_table(weapon_rarity_table)
  end

  def common
    "#{weapon_material(@material)} #{weapon_type(@type)}"
  end

  def uncommon
    "#{weapon_size(@size)} #{common}"
  end

  def rare
    "#{weapon_title(@title)} #{uncommon} "
  end

  def very_rare 
    "#{rare} #{weapon_effect}"
  end

  def legendary
    "#{weapon_special(@special)} #{very_rare}"
  end 

  def weapon_types
    {
    sword: "Меч",
    axe: "Топор",
    staff: "Посох",
    dagger: "Кинжал",
    club: "Дубина",
    mace: "Булава",
    spear: "Копье",
    boomerang: "Бумеранг"
    }
  end

  def weapon_type(type = nil)
    type = type.nil? ? weapon_types.keys.sample : type.to_sym
    weapon_types[type]
  end

  def weapon_materials
    {
    wood: "Деревянный",
    glass: "Стеклянный",
    obsidian: "Обсидиановый",
    bronze: "Бронзовый",
    iron: "Железный",
    steel: "Стальной",
    gold: "Золотой",
    mithril: "Мифриловый",
    adamantium: "Адамантиновый",
    carbon: "Карбоновый",
    meteorite: "Метиоритный"
    }
  end 

  def weapon_material(material = nil)
    material = material.nil? ? weapon_materials.keys.sample : material.to_sym
    weapon_materials[material]
  end

  def weapon_sizes 
    {
    mini: "Крошечный",
    small: "Маленький",
    middle: "Средний",
    big: "Большой",
    giant: "Гигантский"
    }
  end

  def weapon_size(size = nil)
    size = size.nil? ? weapon_sizes.keys.sample : size.to_sym
    weapon_sizes[size]
  end

  def weapon_titles
    {
    joke: "Мамкин",
    rape: "Рвущий",
    legend: "Эпический",
    offten: "Часто попадающий",
    lucky: "Счастливый",
    bad: "Плохой",
    good: "Хороший",
    unlucky: "Несчастливый",
    fall: "Часто падающий"
    }
  end

  def weapon_title(title = nil)
    title = title.nil? ? weapon_titles.keys.sample : title.to_sym
    weapon_titles[title]
  end

  def weapon_effects
    {
    fire: "Огненный",
    water: "Водный",
    earth: "Земляной",
    ice: "Ледяной",
    air: "Воздушный",
    magic: "Магический",
    mental: "Ментальный",
    acid: "Кислотный",
    blood: "Кровавый"
    }
  end

  def weapon_effect(effect = nil)
    effect = effect.nil? ? weapon_effects.keys.sample : effect.to_sym
    weapon_effects[effect]
  end

  def weapon_specials
    {
    good: "Божественный",
    angel: "Ангельский",
    devil: "Демонический",
    hero: "Геройский",
    villain: "Злодейский",
    coward: "Испуганный",
    temple: "Храмовый",
    relic: "Священный"
    }
  end

  def weapon_special(special = nil)
    special = special.nil? ? weapon_specials.keys.sample : special.to_sym
    weapon_specials[special]
  end
end


