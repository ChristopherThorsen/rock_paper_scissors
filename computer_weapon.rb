class ComputerWeapon
  WEAPONS = {
    "r" => "The Ridiculous Rock", 
    "p" => "The Puny Paper",
    "s" => "The not too scary Scissors"
  }
  
  def equip
    @computer_weapon_choice = WEAPONS.keys.sample
  end

  def to_s
    "Computer has chosen: #{@computer_weapon_choice}"
  end

  def type
    @computer_weapon_choice
  end

  def name
    WEAPONS[@computer_weapon_choice]
  end
end
