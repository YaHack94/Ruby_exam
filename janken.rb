class Player
    def hand
      puts "

      Veuillez saisir on nombre."
      puts "
      0: Goo

      1: Choki

      2: Par"

      input_hand = gets.chomp

      while true
        test_var = ["0", "1", "2"].include?(input_hand)

        if test_var
          return input_hand.to_i
        else
          puts "Veuillez saisir un nombre compris entre 0 et 2"
          input_hand = gets.chomp
        end
      end
    end
end

class Enemy
  def hand
    return rand (0..2)
  end
end

class Janken
  def pon(player_hand, enemy_hand)

    janken = ["Goo", "Choki", "Par"]

    print "La main de l'adversaire est #{janken[enemy_hand]}.
    "

    if player_hand == enemy_hand
      puts "Egalité!"

      return true

    elsif (player_hand == 0 && enemy_hand == 1) || (player_hand == 1 && enemy_hand == 2) || (player_hand == 2 && enemy_hand == 0)
      puts "Vous gagnez."
      return false

    else
      puts "Vous perdez."
      return false
    end
  end
end

class GameStart
  def self.jankenpon
    player = Player.new

    enemy = Enemy.new

    janken = Janken.new

    next_game = true

    while next_game == true do
      next_game = janken.pon(player.hand, enemy.hand)
    end
  end
end

GameStart.jankenpon
