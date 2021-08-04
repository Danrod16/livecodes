class SuperHero
  attr_reader :name, :age, :costume, :stick, :height, :speed
  def initialize(name, age, costume)
    @name = name
    @age = age
    @costume = costume
    @stick = false
    @height = 0
    @speed = 1

  end
  def climbing_walls
    @stick = true
    puts "Spiderman can walk on walls at #{@speed} km/h"
  end
  def high_jump
    @height += 2
    puts "Spiderman jumps #{@height} m high"
  end
  def swing
    @height += 10
    @speed += 15
    puts "Spiderman swings at #{@speed} km/h and #{height} high"
  end
end
