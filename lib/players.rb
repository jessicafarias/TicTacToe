class Players
  attr_accessor :name
  attr_accessor :symbol
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
