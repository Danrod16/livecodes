class Animal
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def self.phyla
    ['Cat', 'Pig', 'Squirrel', 'Human']
  end

  def eat(food)
    "#{@name} eats #{food}"
  end
end
