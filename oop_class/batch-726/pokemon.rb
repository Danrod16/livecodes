class Pokemon

  # attr_accessor :element, :color, :name, :skills, :level

  SKILLS = ["reading minds", "spitting fire", "triggering earthquakes", "triggering tornados", "triggering tsunamis", "going to sleep", "drinking water", "playing the accordion"]

  def initialize(element, color, name)
    @element = element
    @color = color
    @name = name
    @level = 1
    @skills = []
    @skills << SKILLS.sample
  end

  def say_hi
    puts "My name is #{name}, I am #{color}, my current level is #{level}"
  end

  def upgrade
    puts "Would you like to upgrade?(y/n)"
    input = gets.chomp
    if input == 'y'
      @level += 1
      @skills << SKILLS.sample
      show_skills
    else
      puts "Too bad you're missing out"
    end
  end

  def show_skills
    puts "My level is #{@level} and my hierarchy of skills is:\n"
    puts "> I am AMAZING at #{@skills[0]}"
    puts "> I am mediocre at #{@skills[1]}" unless @skills[1].nil?
    puts "> I SUCK at #{@skills[2]}\n" unless @skills[2].nil?
  end
end

puts "Name of pokemon:"
name = gets.chomp

puts "Color:"
color = gets.chomp

puts "element:"
element = gets.chomp
pokedex = Pokemon.new(element, color, name)

pokedex.say_hi
pokedex.upgrade
pokedex.upgrade
pokedex.show_skills
