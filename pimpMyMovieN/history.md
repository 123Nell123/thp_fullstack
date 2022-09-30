 rails generate migration User 
 rails generate migration User user_name email:string password:string description:text first_name:string last_name:string boolean is_admin
 
 rails g Movie id:integer   title:string   synopsis:text   director:string  original_soundtrack:string   release_date:date
 
 
  bundle install

rails g devise:install
Dans config/environments/developpement.rb, j add cette ligne =>
config.action_mailer.default_url_options = { host: 'localhost', port: 3000 } 

rails g devise User
rails g scaffold Movie id:integer title:string synopsis:text director:string original_soundtrack:string release_date:date
rails g model Comment description:text create_date:date
rails g model Actor full_name:string
rails g model Music title:string band:string style:string
rails g model Category style:string
rails g model Like
*****



todo :
[x] rajouter les ref ds les tables
[x] rajouter les liens ds les models pour circuler entre les tables
faire des seeds:
   un User
   un user admin 
   des films 

   le user fais un commentaire

   le user fais un like  ;






bac a une migration

git reset .
git clean -df
git checkout -- .