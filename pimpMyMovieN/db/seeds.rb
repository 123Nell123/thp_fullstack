# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



require 'faker'

#user.destroy_all

    user = User.create!(
      user_name: "Margo",
      description: Faker::Quote.yoda,
      email: Faker::Internet.email,
      password: "MargoPass" ,
      is_admin: false)

  
   user = User.create!(
    user_name: "bob",
    description: Faker::Quote.yoda,
    email: Faker::Internet.email,
    password: "bobPass" ,
    is_admin: true)



5.times do |i|
    user = User.create!(
      user_name: Faker::Name.first_name,
      description: Faker::Quote.yoda,
      email: Faker::Internet.email,
      password: "password${i}" ,
      is_admin: false)

   end



#movie.destroy_all
5.times do
  movie = Movie.create!(
    title: Faker::Movie.title,
    synopsis: Faker::Movie.quote,
    director: Faker::Name.first_name,
    original_soundtrack: Faker::Music.album
)
end

#comment.destroy_all
2.times do 
    comment = Comment.create!(
        description: Faker::ChuckNorris.fact,
        user_id: User.find(1).id,
        movie_id: Movie.find(1).id
  )
  end

#likes.destroy_all
1.times do |t|
    like = Like.create!(
        user_id: User.find(1).id,
        movie_id: Movie.find(1).id
  )
  end



#actors.destroy_all
3.times do
        actor = Actor.create!(
        full_name: Faker::Artist.name,
        movie_id: Movie.find(1).id
        )
end

#musics.destroy_all
3.times do
        music = Music.create!(
       title: Faker::BossaNova.song,
       movie_id: Movie.find(1).id
         )
   end

   #categories.destroy_all
2.times do
    categorie = Category.create!(
        style: Faker::Emotion.noun,
        movie_id: Movie.find(1).id
    )
  end

#todo 
#associer un film a une musics et une categorie
# impossible en base !
# movie1 = Movie.find(1) 
# music1 = Music.find(1)
# # on ajoute un film au film 
# music1.create_movie(movie1)


