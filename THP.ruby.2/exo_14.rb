

emails = []
domaine = "@email.fr"
nom = "jean.dupont"

50.times do |i| 
 var = nom +i.to_s+ domaine
  emails.push(var)
end


#puts emails.inspect
emails.length.times do |i|
 if i%2 == 0
    puts emails[i]
 end
end
