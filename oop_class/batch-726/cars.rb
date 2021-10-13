class Cars
  attr_accessor :brand, :model, :colour, :hp, :kilometers
  def initialize(brand, model, colour, hp, kilometers)
    @brand = brand
    @model = model
    @colour = colour
    @hp = hp
    @kilometers = kilometers
  end
  def to_s
    if @brand == "Tesla"
      return " You have a #{@colour.downcase} #{@brand} #{model} that has #{@hp} horse power with #{kilometers} kilometers. But hey! Your car is electric. "
    else
      return " You have a #{@colour} #{@brand} #{model} that has #{@hp} horse power with #{kilometers} kilometers. But hey! Your car is not electric. GO GREEN"
    end
  end
end
tesla_three = Cars.new("Tesla","Model 3", "Blue", 1, "30.000")
ford_raptor = Cars.new("Ford", "Ranger", "Red", 700, "536.000")
p tesla_three.to_s
p ford_raptor.to_s
