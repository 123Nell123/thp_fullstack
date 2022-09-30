class Patient < ApplicationRecord
    belongs_to :city
    has_many :appointements
    has_many :doctors, through: :appointements
    
end
