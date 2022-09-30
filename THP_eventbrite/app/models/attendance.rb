class Attendance < ApplicationRecord


    has_many :attendances
    has_many :users, through: :attendances
    #belongs_to :user

    #TODO : validateur !!
end
