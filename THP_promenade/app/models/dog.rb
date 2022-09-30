class Dog < ApplicationRecord

    belongs_to :dogsitter
    has_many :dogsitter through :stroll
end
