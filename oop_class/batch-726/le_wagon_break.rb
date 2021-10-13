class LeWagonBreak
  def initialize
    @time = time
    @reason = reason
    @length = length
  end
  def time
    @time = Time.now
    puts "You are currently taking a break at #{@time}"
  end
  def reason
    reasons = ["toilet", "applied for a ticket (again, again...)", "water", "bored"]
    @reason = reasons[1]
    puts "Reason for break: #{@reason}"
    puts "Possible solution to your problem: Tried copy-pasting you neighbours code?" if @reason == "applied for a ticket (again, again)"
  end
  def length
    rake_problems = true
    if rake_problems == true
      @length = 10
      puts "Well.. you definetly need a break.. Maybe #{@length} minutes?"
    else
      @length = 5
      puts "You should still take a break. How about #{@length} minutes? :)"
    end
  end
end
puts "************************************************************"
the_break = LeWagonBreak.new
