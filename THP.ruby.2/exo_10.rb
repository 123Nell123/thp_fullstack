puts "votre date de naissance svp?"

date = gets.chomp.to_i
auj = 2021
age = 2021 - date
#puts " vous aviez #{2017-date} ans en 2017"
age.times do |i|
  puts "en  #{date + i} vous aviez #{i} ans "

end
 puts "en #{date + age } vous avez  #{age}"
