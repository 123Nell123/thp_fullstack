require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'



puts  "------------------------------------------------"
puts  "|Bienvenue sur 'ILS VEULENT TOUS MA POO' !      |"
puts  "|Le but du jeu est d'être le dernier survivant !|"
puts  "-------------------------------------------------"

puts "prénom ?"
nom_joueur = gets.chomp


joueur = HumanPlayer.new("#{nom_joueur}")


ennemis= ["josiane","josé"]
player1= Player.new(ennemis[0])
player2= Player.new(ennemis[1])

while joueur.life_points >0 && (player1.life_points > 0 || player2.life_points >0)

    if ....
        puts "BRAVO ! TU AS GAGNE !"
    end
    else
        puts "Loser ! Tu as perdu !"
    end
end
binding.pry