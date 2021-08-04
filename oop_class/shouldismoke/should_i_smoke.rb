class ShouldISmoke
  attr_accessor :drunk, :stress
  x
  def initialize(drunk, stress)
    @drunk = drunk
    @stress = stress
    @smoke = false
  end

  def smoke?
    @smoke
  end

  def smoke_decision
    if @drunk >= 7 && @stress <= 4
      @smoke = true
    elsif @drunk <= 4 && @stress >= 7
      @smoke = true
    elsif @drunk >= 7 && @stress >= 7
      puts "You should definitely smoke"
      @smoke = true
    elsif @drunk >= 9 || @stress >= 9
      puts "Take it easy man"
      @smoke = true
    else
      puts "You shouldn't smoke friendo"
    end
  end
end
