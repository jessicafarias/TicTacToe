class GameCondition
  attr_accessor :array
  attr_accessor :count
  @hash = { 'a' => 0, 'b' => 1, 'c' => 2, 'd' => 3, 'e' => 4, 'f' => 5, 'g' => 6, 'h' => 7, 'i' => 8 }

  def initialize(array = %w[a b c d e f g h i], count = 1)
    @array = array
    @count = count
    @win_array = [[0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 3, 6], [1, 4, 7], [2, 5, 8], [0, 4, 8], [2, 4, 6]]
  end

  def self.convertsymbol(position)
    @hash.key?(position) ? @hash[position] : 'No Valid'
  end

  def position_override?(position, symbol)
    if (@array[position] != 'X') && (@array[position] != 'O')
      @count += 1
      @array[position] = symbol
      #true
    #else
      #false
    end
  end

  def check_win?
    @win_array.length.times do |i|
      comparison1 = @array[@win_array[i][1]] == @array[@win_array[i][0]]
      comparison2 = @array[@win_array[i][1]] == @array[@win_array[i][2]]
      return @array[@win_array[i][0]] if comparison1 && comparison2
    end
    return true if @count == 10
    false
  end

  def printboard
    "__#{@array[0]}_|_#{@array[1]}_|_#{@array[2]}__\n"+
    "__#{@array[3]}_|_#{@array[4]}_|_#{@array[5]}__\n"+
    "  #{@array[6]} | #{@array[7]} | #{@array[8]}\n"
  end

  def who_is_winning(symbol, player1, player2)
    if symbol == 'O'
      "player2"
    elsif symbol == 'X'
      "player1"
    else
      nil
    end
  end
end
