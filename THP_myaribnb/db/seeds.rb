# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'
#########################

#back_to_0

User.destroy_all
City.destroy_all
Reservation.destroy_all
Listing.destroy_all


#50_rows
available_beds_array =[0,1,2,3,4,5]
price_room = rand(29..359)
has_wifi_possibilities =[true,false]

50.times do |i|
    User.create(
        email: Faker::Internet.email,
        phone_number: Faker::PhoneNumber.phone_number,
        description: "super appart"
        )
        
    City.create(
        name: Faker::Address.city, 
        zip_code: Faker::Address.zip_code
        )
        
    end  
    puts "user et city created"

50.times do |i|         
     Listing.create(
        available_beds: available_beds_array.sample,
        price: price_room,
        description: "",
        has_wifi: has_wifi_possibilities.sample,
        welcome_message: "The New Airbnb will make you happy ! Enjoy:)",
        user_id: User.all.sample.id,
        city_id: City.all.sample.id
                )  
        
    Reservation.create(
        start_date: Date.today,
        end_date: Date.today + i,
        user_id: User.all.sample.id,
        listing_id: Listing.all.sample.id
         ) 
         
end
puts "listing resa created created"