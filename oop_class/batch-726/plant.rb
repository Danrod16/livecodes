class Plants
  def initialize(reproduction, poisonous)
    @reproduction = reproduction
    @poisonous = poisonous
  end

  def description
    if @poisonous
      message = "because it is poisonous"
    else
      message = "because it is not poisonous."
    end
    "Your plant reproduces by #{@reproduction} and is #{pollinisation} #{message}"
  end

  def pollinisation
    # if its flowering = bees
    # if its fruits = birds
    # EXCEPT if they are poisonous, they are not polinised
    if @reproduction == "flowering" && @poisonous == false
      return "pollinised by bees"
    elsif @reproduction == "fruits" && @poisonous == false
      return "pollinised by birds"
    else
      return "not pollinised by animals"
    end
  end
end

plant1 = Plants.new("flowering", true)
puts plant1.description

plant2 = Plants.new("fruits", false)
puts plant2.description

# flowering, fruits
# wood is white, brown, black
# pollinised by bees or birds
# poisonous?
# where it grows
# weather preference
#
# Description of the plant
