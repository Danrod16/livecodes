class Heist
  attr_reader :place, :transport, :weapon
  attr_accessor :succesful

  def initialize(place, transport, weapon)
    @place = place
    @transport = transport
    @weapon = weapon
    @succesful = false
  end

  def perform_robbery!
    robbing_odds = [false, true]
    @succesful = robbing_odds.sample
  end
end
