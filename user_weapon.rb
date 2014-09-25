class UserWeapon
  SCREEN_WIDTH = 80
  WEAPON_NAMES = {
    "r" => "The Mighty Rock",
    "p" => "The Stealthy Paper",
    "s" => "The Always Dangerous Scissors",
  }
  def equip
    choose_user_weapon
    while ! WEAPON_NAMES.keys.include?(@user_weapon_choice)
      puts "I'm sorry my liege, we did not pack that weapon.".center(SCREEN_WIDTH)
      choose_user_weapon
    end
    @user_weapon_choice
  end

   def to_s
     "You have chosen: #{@user_weapon_choice}".center(SCREEN_WIDTH)
   end

   def type
     @user_weapon_choice
   end

   def choose_user_weapon
     puts "choose a weapon // available weapons:  #{WEAPON_NAMES.keys.join(", ")}: ".center(SCREEN_WIDTH)
     print " " *(SCREEN_WIDTH / 2)
     @user_weapon_choice = gets.chomp
   end

   def name
     WEAPON_NAMES[@user_weapon_choice]
   end
end
