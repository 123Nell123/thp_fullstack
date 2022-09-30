puts "votre date de naissance svp?"

date_nai = gets.chomp.to_i
auj = 2021
age_actuel = 2021 - date_nai





#puts " vous aviez #{2017-date} ans en 2017"
age_actuel.times do |i|
  puts "l y a #{auj- date_nai - i} ans vous aviez #{i} ans "
  age_variable = auj - date_nai - i 
  if age_variable  ==  i 
  puts "il y a #{auj- date_nai - i} tu avais la moitie de l'age que tu as auj " 
  end 
end
 puts "auj vous avez  vous avez  #{age_actuel} ans"
