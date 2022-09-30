puts "votre date de naissance svp?"

date = gets.chomp.to_i
auj = 2021
age = 2021 - date
#puts " vous aviez #{2017-date} ans en 2017"
age.times do |i|
  puts " #{date + i}"

end
 puts "en #{date + age } 
