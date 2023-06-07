require_relative 'card.rb'

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

    def get_values
        alpha = ("a".."z").to_a
        numofpairs = @boardsize / 2 
        pairsarray = []
        2.times do 
            (0...numofpairs).each do |i|
                pairsarray << alpha[i]
            end
        end   
        pairsarray
    end

    def populate()
        diff_cards = self.get_values
        while countCards < @boardsize do 
            (0...@boardsize).each do |idx|   
                stop_loop = false    
                until stop_loop do
                    open_spot = find_empty_spot
                    if open_spot != nil
                 self[open_spot] = Card.new(diff_cards[idx])
                 stop_loop = true   
                    end 
                end 
            end
        end
    end
       
    def find_empty_spot  # return true if cards is placed
        rand_row = rand(0...@grid.length)
        rand_col = rand(0...@grid.length)
        pos = [rand_row,rand_col] 
        return pos if self[pos] == nil
    end

    def countCards
        @grid.flatten.count {|p| p!=nil}
    end

    def render ()
        result = ''
        (0...@grid.length).each do |i|
            result += ' '+ i.to_s
        end
        puts ' '+ result
        @grid.each_with_index do |row, i|
            print i.to_s
         row.each do |ele| 
            print " " + ele.to_s
           end
        end
    end

    def hidden_values_grid
        @grid.map do |array|
         array.map do |ele|
             if ele != nil        
                 '?'
             end
         end
        end
      end

    # def won?()
    #     @grid.all? do |row|
    #         row.all? do ||
    #         end
    #     end

        
    # end
    
    def reveal(pos1)
        if @grid[pos1] == false
        end
    end
end