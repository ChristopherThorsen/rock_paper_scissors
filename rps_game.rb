require "./round"
require "./score_board"
class RPSGame
  SCREEN_WIDTH = 80

  def initialize
    @score_board = ScoreBoard.new
  end
  def print_intro_message
    print_horizontal_rule
    puts "The Computer Menace has offended your people's honor for the last time".center(SCREEN_WIDTH) 
    puts "Prepare for battle".center(SCREEN_WIDTH)
    print_horizontal_rule
    play
  end

  private

  def play
    start_round
    update_score_board
    display_score_board
    ask_for_surrender
  end

  def start_round
    round = Round.new
    @result_of_round = round.play
  end

  def update_score_board
   @score_board.update_scores(@result_of_round)
  end

  def display_score_board
    sleep(1)
    @score_board.display
  end

  def ask_for_surrender
    puts
    print "The battle has ended but the war still rages. Type |quit| to surrender and forever shame your people >".center(RPSGame::SCREEN_WIDTH)
    user_response = gets.chomp
    if user_response == "quit"
      exit_message
    else
      play
    end
  end

  def print_horizontal_rule
    puts "-" * SCREEN_WIDTH
  end

  def exit_message
    puts
    puts "RUN AND HIDE YOU COWARD".center(RPSGame::SCREEN_WIDTH)
    puts
  end
end

game = RPSGame.new
game.print_intro_message

