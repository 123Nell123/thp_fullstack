class Doctor < ApplicationRecord
    belongs_to :city
    has_many :appointements
    has_many :patients, through: :appointments
    has_many :specialities
end
