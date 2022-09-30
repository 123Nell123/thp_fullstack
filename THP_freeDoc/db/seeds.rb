# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)




require 'faker'

Doctor.destroy_all
Patient.destroy_all
City.destroy_all
Appointement.destroy_all

10.times do
  city = City.create!(name: Faker::Address.city)
  print '.'
end

100.times do
  doctor = Doctor.create!(first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    zip_code: Faker::Address.zip_code,
    city_id: City.all.sample.id)
  print '.'
end
puts "doctor cree "


Speciality.create!(speciality: "Zygomaticologue")
Speciality.create!(speciality: "Casimirologue")
Speciality.create!(speciality: "Simpsonologue")
Speciality.create!(speciality: "Rigologue")
Speciality.create!(speciality: "Rirififilouloulogue")
Speciality.create!(speciality: "Gandalfologue")
puts "spec cree"

# 100.times do
#   join = AjoutSpeciality.create!(doctor: Doctor.all.select(:id).sample,
#     speciality: Speciality.all.select(:id).sample)
#   print '.'
# end
  join = AjoutSpeciality.create!(doctor: Doctor.all.select(:id).sample,
    speciality: Speciality.all.select(:id).sample)
  print '.'
end


puts "joint cree "


100.times do
  patient = Patient.create!(first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    city_id: City.all.sample.id)
  print '.'
end

puts "patient cree "
100.times do
  appointement = Appointement.create!(doctor: Doctor.all.sample,
    patient: Patient.all.sample,
    date: Faker::Date.forward(days: 100),
    city_id: City.all.sample.id)
  print '.'
end

