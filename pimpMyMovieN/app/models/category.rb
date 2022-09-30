class Category < ApplicationRecord
    #un film peut avoir plusieurs categories
    belongs_to :movie
    #une categorie utilise pour plusieurs films
    has_many :movie
end
