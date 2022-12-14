class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

# ajout 

         has_many :comments
         has_many :movies, through: :comments

         has_many :likes
         has_many :movies, through: :likes       

end
