puts "salut, bienvenu dans ma super pyramide !  Combien d'étages veux tu ?"
nbre_etage_reel = gets.chomp.to_i
puts "voici la pyramide"
etage = "#"
puts "#{etage}"
nbre_etage = nbre_etage_reel -1
nbre_etage.times do 
  etage = etage + "#"
  puts "#{etage}"
end 
