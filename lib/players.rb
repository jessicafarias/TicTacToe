class Players
  attr_reader :name
  attr_reader :symbol
  attr_accessor :count

  def initialize(name, symbol, count = 0)
    @name = name
    @symbol = symbol
    @count = count
  end

  def winner_counter
    @count += 1
  end
end
