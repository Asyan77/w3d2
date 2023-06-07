class Card
    def initialize(mark)
        @face_value = mark
        # false = down
        @face_updown = false
    end

    def hide
        @face_updown = false
    end

    def reveal
        @face_updown = true
    end

    def to_s
        p @face_value
    end

    def == (input_value)
        @face_value == input_value
    end
end