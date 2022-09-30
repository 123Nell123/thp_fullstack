puts "salut, bienvenu dans ma super pyramide !  Combien d'étages veux tu ?"
nbre_etage = gets.chomp.to_i

puts "voici la pyramide"

espace = nbre_etage - 1
brique = 1

nbre_etage.times do
    espace.times do
    print " "
    end

    brique.times do
    print "#"
    end

    brique = brique + 1 
    espace = espace - 1
    puts " "
end   

