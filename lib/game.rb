class GameCondition
    attr_accessor :array
    @hash= {"a"=>0, "b"=>1, "c"=>2, "d"=>3, "e"=>4,"f"=>5,"g"=>6, "h"=>7, "i"=>8}
    @win_array=[["a","b","c"],["d","e","f"],["g","h","i"],["a","d","g"],["b","e","h"],["c","f","i"],["a","e","i"], ["c","e","g"]]
    

    def initialize(array=["a","b","c","d","e","f","g","h","i"])
      @array=array
    end

    private
    def hash
    @hash= {"a"=>0, "b"=>1, "c"=>2, "d"=>3, "e"=>4,"f"=>5,"g"=>6, "h"=>7, "i"=>8}
    end

    private
    def self.convertsymbol(position)
        @hash[position].nil? ? "No Valid" : @hash[position]
    end

    public
    def position_override(position, symbol)
      @array[position]=symbol
    end

    def self.CheckWin(array)
      @win_array.length.times do |i|
        @win_array.length.times do |j|
          puts @win_array[i][j] #Each letter ==
        end
      end  


        #take the n element of te winarray
        #foreach element in the winarrray[n] we neet to get the position and compare if the simbols are equal
        #what symbol?
        #Find the player by the symbol
        #Check the next element in the winarray
    end
end
    