class DrunkOMeter
  def initialize(name, number_of_drinks, bmi)
    @name = name
    @number_of_drinks = number_of_drinks
    @bmi = bmi
    @mood_good = true
    number_drinks_status
    calculates_drunk_level
  end
  def rake_failed_now_sad!
    @mood_good = false
    return "#{@name} complains: Your dumb Rake is not working!!"
  end
  def number_drinks_status
    return "#{@name} is now at #{@number_of_drinks} drinks. How much more is possible?"
  end
  def drink_to_forget
    @number_of_drinks = @number_of_drinks * 2 if @mood_good == false
    return "#{@name} really wants to forget what is going on. Give him or her more drinks!!"
  end
  def calculates_drunk_level
    if @bmi < 20 && @number_of_drinks > 5
      return "Our Drunk O' Meter says: Skinny you, you are so fucking drunk. Stop complaining and carry on."
    elsif @bmi > 20 && @number_of_drinks > 5
      return "Our Drunk O' Meter says: You are right on track!"
    else
      return "Our Drunk O' Meter says: Did you even start?"
    end
  end
end
require_relative "drunk_o_meter"
name_smth = DrunkOMeter.new("Arthur", 7, 60)
p name_smth
p name_smth.number_drinks_status
sleep 3
p name_smth.rake_failed_now_sad!
sleep 3
p name_smth.drink_to_forget
sleep 3
p name_smth.number_drinks_status
sleep 3
p name_smth.calculates_drunk_level
