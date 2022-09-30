class Player
    attr_accessor :name, :life_points
    @@alive = true

    def initialize(name)
        @name = name
        @life_points = 10
    end



    def show_state
    puts "il  reste  #{@life_points} à #{@name} points de vie"  
    end

    def gets_damage(point)
    @life_points -= point
         if (@life_points <= 0 )
            then 
                puts "#{@name} a perdu tout ses points"
                puts "game over"
                
        end
    end


    def attacks(player)
        puts "#{@name} va attaquer  #{player} "
        damage = compute_damage
        puts "il lui inflige #{damage} points de dommages"
        return damage
    end


    def compute_damage
        damage = rand(1..6)
        puts "damage: #{damage} "
        return damage
    end
   
end


class HumanPlayer  < Player
    attr_accessor :weapon_level
    
    



    def initialize(name)
        super (name)
        @life_points = 100
        @weapon_level = 1

    end




    def show_state
        puts "il  reste  #{@life_points} à #{@name} points de vie et une arme de niveau #{@weapon_level}"  
    end

    def compute_damage
        rand(1..6) * @weapon_level
    end

    def search_weapon
        choix = rand(1..6)
        case x
        when 1
          puts "Tu n'as rien trouvé... "
        when 2..5
        @life_points += 50
          puts "Bravo, tu as trouvé un pack de +50 points de vie !"
        when 6
          @life_points += 80
          puts "Bravo, tu as trouvé un pack de +80 points de vie !"

        end
    end




end
