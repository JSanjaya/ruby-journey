class grid
    @@grid
    @@guesses
    def initialize()
        @@grid = [[1,2,3],[4,5,6],[7,8,9]]
        @@guesses = []
    end

    def get_grid
        @@grid
    end

    def check_guesses(pos)
        if @@guesses.includes?(pos)
            return "That space is unavailable"
        end
    end

    def set_grid(pos, player)
        unless check_guesses(pos)
        case pos
        when 1
            @@grid[0][0] = player
        when 2
            @@grid[0][1] = player
        when 3
            @@grid[0][2] = player
        when 4
            @@grid[1][0] = player
        when 5
            @@grid[1][1] = player
        when 6
            @@grid[1][2] = player
        when 7
            @@grid[2][0] = player
        when 8
            @@grid[2][1] = player
        when 9
            @@grid[2][2] = player
        else
            "Please enter a number between 1-9"
        end
        end
    end
end