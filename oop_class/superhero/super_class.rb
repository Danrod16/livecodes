class SuperHero
  attr_reader :name
  def initialize(name, special_powers, outfit_color)
    @name = name
    @special_powers = special_powers
    @outfit_color = outfit_color
  end
  def reveal_identity
    "The hero's real name begins with #{identity[0]}"
  end
  private
  def identity
    @name.split("").shuffle.join.capitalize
  end
end
