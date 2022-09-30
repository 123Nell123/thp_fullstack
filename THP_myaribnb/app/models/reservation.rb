class Reservation < ApplicationRecord
    belongs_to :user
    belongs_to :listing

    # def start_date
    #     # surcharge start_date
    #    if (self.start_date < self.end_date)
    #     then 
    #      return start_date
    #    else 
    #     puts "erreur la date de fin est plus petite que la date de debut"
        
    #     end
    # end


end
