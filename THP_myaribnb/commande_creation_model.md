rails g model User email:string phone_number:string description:text
rails g model City name:string zip_code:string
rails g model Listing  available_beds:integer price:integer description:text has_wifi:boolean welcome_message:text
rails g model Reservation  start_date:datetime end_date:datetime 

*****rappel relation*******

#Un utilisateur peut avoir plusieurs réservations: il devient alors un "invité" (guest).
#Un utilisateur peut être administrateur de plusieurs listings.
#Une ville peut avoir plusieurs listings.

#Un listing a un administrateur (qui est un utilisateur).
#Un listing a plusieurs réservations.
#Un listing appartient à une ville.

#Une réservation est associée à un guest (qui est un utilisateur) et un listing.


*** TODO ****
1) verifier les relations
2) comment un USER est guest ou admin?
3) affichage BDD


******************************USER***************************************************************
# *******dans les models  ************

** validation **

validates :email, 
presence: true
uniqueness: true,
format: { with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/, message: "email adress please" }

validates :phone_number, 
presence: true
uniqueness: true,
format: { with: /\A(?:(?:\+|00)33[\s.-]{0,3}(?:\(0\)[\s.-]{0,3})?|0)[1-9](?:(?:[\s.-]?\d{2}){4}|\d{2}(?:[\s.-]?\d{3}){2})\z/, message: "please enter a valid french number" }


** relation  *****
has_many: listings
has_many: reservations  # TODO --> user : become "guest"



# ***** dans les tables *******



********************************CITY*************************************************************

# *******dans les models  ************
** validation **
validates :name, 
presence: true


validates :zip_code, 
presence: true
uniqueness: true,

** relation  ***
has_many: listings



# # ***** dans les tables *******


*******************************LISTING*************************************************************


# *******dans les models  ************

** relation  ***
has_many: reservations    
belongs_to: city   
belongs_to: user                       # TODO --> user : become "administrateur"
has_many: users though  reservations   # TODO --> user : become "guest"



# # ***** dans les tables *******
belongs_to: city, index: true
belongs_to: user, index: true



******************************** reservations **************************************************************

# *******dans les models  ************

belongs_to :user
belongs_to :listing



# # ***** dans les tables *******

belongs_to :user, index: true
belongs_to :listing, index: true
