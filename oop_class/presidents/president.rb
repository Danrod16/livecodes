class President
  attr_reader :name, :country, :dictator, :amount
  def initialize(name, country, dictator, amount = 0)
    @name = name
    @country = country
    @dictator = dictator
    @amount = amount
  end

  def to_s
    if @dictator
      puts "#{name} is the president of #{country} and he is dictator. He is responsible of #{amount} deaths."
    else
      puts "#{name} is the president of #{country} and he is ok. He is responsible of #{amount} deaths."
    end
  end
end
