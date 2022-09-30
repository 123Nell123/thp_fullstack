require 'faker'

#10 VILLES
# 10.times do |i|
#     c = City.new
#     c.name = Faker::Address.city
#     c.zip_code = "#{rand(0..9)}#{rand(0..9)}#{rand(0..9)}#{rand(0..9)}#{rand(0..9)}"
#     c.save
# end
#User.create!(first_name: "Anonymous", last_name: ".", description:"I am the wind, I am a bird passing by", email:"WindBird@anonymous.com", age: 90, city_id: 2)

# #50 USERS
# 50.times do |i|
#     first_name = Faker::Name.first_name
#     last_name = Faker::Name.last_name
#     u = User.new
#     u.first_name = first_name
#     u.last_name = last_name
#     u.description = "Awesome description"
#     u.email = "#{first_name}.#{last_name}@gmail.com"
#     u.age = rand(18..90)
#     u.city_id = rand(1..10)
#     u.save
# end

# #10 GOSSIP
# 10.times do |i|
#     g = Gossip.new
#     g.title = "My Gossip Title YAY :°"
#     g.content = "My Gossip Content..."
#     g.user_id = rand(1..50)
#     g.save
# end

10.times do |i|
    t = Tag.new
    t.title = "Tag_N°_#{i}"
    t.save
end
