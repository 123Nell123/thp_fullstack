class Movie < ApplicationRecord

   
    has_many :comments
    
    has_many :categories
    
    has_many :likes
    
    has_many :actors
    
    has_many :musics



end
