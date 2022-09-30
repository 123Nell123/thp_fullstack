class Listing < ApplicationRecord
    has_many :reservations    
    belongs_to :city   
    belongs_to :user                       # TODO --> user : become "administrateur"
    has_many :users, through:  :reservations   # TODO --> user : become "guest"

 def is_admin
    user.status = "admin"
 end

 def is_guest
    user.status = "guest"
 end

end
