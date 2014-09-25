
class ScoreBoard

  def initialize
    @wins = 0
    @ties = 0
    @losses = 0
  end

  def update_scores(result)
    if result == "VICTORY"
      @wins = @wins + 1
    end

    if result == "TIE"
      @ties = @ties + 1
    end

    if result == "You LOSE :("
      @losses = @losses + 1
    end
  end

  def display
    puts "Wins:#{@wins}"
    puts "Losses:#{@losses}"
    puts "Ties:#{@ties}"
  end
end
