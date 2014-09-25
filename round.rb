require "./user_weapon"
require "./computer_weapon"
require "./result"

trap("INT") { puts; exit }

class Round
  TIME_BETWEEN_LOADING_DOTS = 0.25
  TIME_BETWEEN_BATTLE_DOTS = 0.25
  NUMBER_OF_LOADING_DOTS = 3
  NUMBER_OF_BATTLE_DOTS = 4
 
  def initialize
  end

  def play
    equip_weapons
    display_weapon_name
    begin_battle
    print_results
  end

    
  private

  def equip_weapons
    @user_weapon = UserWeapon.new
    @computer_weapon = ComputerWeapon.new
    @user_weapon.equip
    @computer_weapon.equip
  end

  def display_weapon_name
    puts
    puts
    puts "Equipping the #{@user_weapon.name}".center(RPSGame::SCREEN_WIDTH)
    print_loading_dots
  end

  def begin_battle
    print_horizontal_rule
    puts "Let The Battle Begin".center(RPSGame::SCREEN_WIDTH)
    print_horizontal_rule
  end
  
  def print_results
    print_fight_scene_dots
    print_computer_weapon
    print_fight_scene_dots
    print_winner
  end

  def print_fight_scene_dots
    NUMBER_OF_BATTLE_DOTS.times do
      puts ".".center(RPSGame::SCREEN_WIDTH)
      sleep(TIME_BETWEEN_BATTLE_DOTS)
    end
  end

  def print_loading_dots
    NUMBER_OF_LOADING_DOTS.times do
      puts ".".center(RPSGame::SCREEN_WIDTH)
      sleep(TIME_BETWEEN_LOADING_DOTS)
    end
  end


  def play_again
    play
  end

  def print_horizontal_rule
    puts "-" * RPSGame::SCREEN_WIDTH
  end

  def print_computer_weapon
    puts "The Computer Menace charges with #{@computer_weapon.name}".center(RPSGame::SCREEN_WIDTH)
  end

  def print_winner
    print_horizontal_rule
    @result = Result.new(@user_weapon, @computer_weapon)
    puts "#{@result.winner}".center(RPSGame::SCREEN_WIDTH)
    print_horizontal_rule
    @result.winner
  end
end

