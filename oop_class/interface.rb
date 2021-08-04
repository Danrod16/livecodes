require_relative "heist.rb"

heist = Heist.new("Banco de españa", "TukTuk", "Banana")
until heist.succesful
  puts "Performing heist"
  sleep(2)
  puts "Disabling security cameras"
    time = 10
  10.times do
    time - 1
    puts time
  end
end
