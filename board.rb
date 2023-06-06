class Board
    def initialize(size=4)
        # @cards = []
        @grid = Array.new (size){Array.new(size)}
        @boardsize = size * size
    end

    def [](pos)
        row,col = pos
        @grid[row][col]
    end

    def []=(pos,value)
        row,col = pos
        @grid[row][col] = value
    end

    def populate ()       
        alpha = ("a".."z").to_a
        numofpairs = @boardsize / 2 
        pairsarray = []
        2.times do 
            (0...numofpairs).each do |i|
                pairsarray << alpha[i]
            end
        end   
        puts pairsarray
        puts pairsarray.size.to_s + "!!!"

        (0...@boardsize).each do |idx|       
            while countCards < @boardsize do
                    
                    # rand_row = rand(0...@grid.length)
                    # rand_col = rand(0...@grid.length)
                    # pos = [rand_row,rand_col]
                    pos = checknil
                       self[pos] = pairsarray[idx] 
                    # end          
            end
        end

    end
       
    def checknil  # return true if cards is placed
        rand_row = rand(0...@grid.length)
        rand_col = rand(0...@grid.length)
        pos = [rand_row,rand_col] 
         
        return pos if self[pos] ==nil
    end

    def countCards
        @grid.flatten.count {|p| p!=nil}
    end

    def render ()
        p @grid
    end

    # def won?()
    #     @grid.all? do |row|
    #         row.all? do ||
    #         end
    #     end

        
    # end
    
    def reveal()
        
    end
end