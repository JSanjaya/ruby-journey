module Combi
  def initialize()
  end

  def check_rows(grid)
    for i in 0..2
      if (grid[i][0] == grid[i][1] && grid[i][1] == grid[i][2])
        return 1
      end
    end
    return nil
  end

  def check_cols(grid)
    for i in 0..2
      if (grid[0][i] == grid[1][i] && grid[1][i] == grid[2][i])
        return 1
      end
    end
    return nil
  end

  def check_diag(grid)
    if (grid[0][0] == grid[1][1] && grid[1][1] == grid[2][2]) || (grid[0][2] == grid[1][1] && grid[1][1] == grid[2][0])
      return 1
    end
  end

  def hasWon(grid)
    check_rows(grid) || check_cols(grid) || check_diag(grid)
  end
end
