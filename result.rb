class Result
  BATTLE_RESULTS = {
    "r" => {"r" => "TIE", "p" => "You LOSE :(", "s" => "VICTORY",},
    "p" => {"p" => "TIE", "s" => "You LOSE :(", "r" => "VICTORY"},
    "s" => {"s" => "TIE", "r" => "You LOSE :(", "p" => "VICTORY"}
    }

  def initialize(user_weapon, computer_weapon)
    @user_weapon = user_weapon
    @computer_weapon = computer_weapon
  end

  def winner
    BATTLE_RESULTS[@user_weapon.type][@computer_weapon.type]
  end
end
