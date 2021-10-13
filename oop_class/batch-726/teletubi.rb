class Teletubbi
  def initialize(color, sound, move, headshape)
    @color = color
    @sound = sound
    @move = move
    @headshape = headshape
  end
  def dance
    puts " #{@move} and two steps left and hop twice "
  end
  def hungry
    if @color == 'red'
      puts 'I am hungry and I need milk'
    else
      puts 'I am just had a shawarma for lunch'
    end
  end
  def present
    puts "#{@sound}... I am little nasty #{@color} teletubbie and I have #{@headshape} antenna on my head"
  end
end
tinkiwinky = Teletubbies.new("blue", "boo boo", "twerk", "triangle")
po = Teletubbies.new("red", "douuu", "jumpingjacks", "circle")

puts tinkiwinky.present
