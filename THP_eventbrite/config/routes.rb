Rails.application.routes.draw do

   root 'static_pages#index'
  # root 'orders#new'

  get 'user/new'
  get 'user/create'
  get 'user/show'



  resources :attendance
  resources :event

  get 'static_pages/secret'
  devise_for :users
 
  root 'orders#new'
  resources :orders, only: [:new, :create]
 
  #new, #create, #show, #index, #edit, #update, #destroy
end



