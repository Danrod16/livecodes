require_relative "should_i_smoke.rb"
p "How stressed are you today? (1-10)"
stress = gets.chomp
p "How drunk are you today? (1-10)"
drunk = gets.chomp
ShouldISmoke.new(stress, drunk)
