class Actor < ApplicationRecord
    
    # rechecher acteur par rapport à un film
    belongs_to :movie

    # recherche de fil a partir d'un acteur
    has_many :movies

end
