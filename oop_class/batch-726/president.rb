class President
  attr_reader :name, :country, :dictator, :amount
  def initialize(name, country, amount = 0)
    @name = name
    @country = country
    @dictator = false
    @amount = amount
    @dead = false
  end

  def to_string
    if @dictator
      puts "#{name} is the president of #{country} and he is dictator. He won #{amount} olympic games"
    else
      puts "#{name} is the president of #{country} and he is not a dictator. He won #{amount} olympic games"
    end
  end

  def becomes_a_dictator
    @dictator = true
  end

  def forced_to_abdicate!
    @dead = true
  end
end

president_of_wadiya = President.new("Aladeen", "Wadiya", 400)
president_of_spain = President.new("Pedro Sanchez", "Spain", 0)
p president_of_wadiya
p president_of_spain

president_of_wadiya.becomes_a_dictator
president_of_wadiya.to_string
puts "is it true he is a dictator? #{president_of_wadiya.dictator}"
president_of_wadiya.forced_to_abdicate!

president_of_spain.to_string
