require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'


Josiane = Player.new("Josiane")
Jose = Player.new("Jose")

puts "voici l etat de chaque joueur"
Josiane.show_state
Jose.show_state

while (Jose.life_points > 0 && Josiane.life_points > 0 )
    puts "Passons à la phase d'attaque :"
    pts_attaque = Josiane.attacks(Jose)
    Jose.gets_damage(pts_attaque)
    if (Jose.life_points==0)
        exitbreak
    end
    pts_attaque = Jose.attacks(Josiane)
    Josiane.gets_damage(pts_attaque)
    puts "voici l etat de chaque joueur"
    Josiane.show_state
    Jose.show_state
    puts "------------------------------"
end


binding.pry


