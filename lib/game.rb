class GameCondition
    attr_accessor :array
    attr_writer :win_array
    @hash= {"a"=>0, "b"=>1, "c"=>2, "d"=>3, "e"=>4,"f"=>5,"g"=>6, "h"=>7, "i"=>8}
    @win_array=[[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,7], [3,4,6]]
    

    def initialize(array=["X","X","X","d","e","f","g","h","i"])
      @array=array
    end

    private
    def hash
    @hash= {"a"=>0, "b"=>1, "c"=>2, "d"=>3, "e"=>4,"f"=>5,"g"=>6, "h"=>7, "i"=>8}
    end

    private
    def win_array
    @win_array=[[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,7], [3,4,6]]
    end

    private
    def self.convertsymbol(position)
        @hash[position].nil? ? "No Valid" : @hash[position]
    end

    public
    def position_override(position, symbol)
      @array[position]=symbol
    end

    public
    def checkWin
      win_array
      p @win_array[0][1]
      @win_array.length.times do |i|
        return @array[@win_array[i][0]] if @array[@win_array[i][0]] && @array[@win_array[i][1]] == @array[@win_array[i][2]] 
      end

    end
end
    