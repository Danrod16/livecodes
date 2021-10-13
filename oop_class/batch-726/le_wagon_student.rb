class LeWagonStudent
  attr_reader :energy

  def initialize(name)
    @name = name
    @energy = 50
    @challenge = 0
  end

  def live_code
    if @energy <= 25
      'Hide! And drink some coffee'
    else
      'Hide anyways and wait for the roulette'
    end
  end

  def challenge_completed!
    @challenge += 1
    @energy -= 15
    "#{@name} completed a challenge"
  end

  def drink_coffee
    @energy += 5
  end
end
javier = LeWagonStudent.new('Javier')
javier.challenge_completed!
javier.challenge_completed!
javier.challenge_completed!
p javier.energy
p javier.live_code
p javier.drink_coffee
