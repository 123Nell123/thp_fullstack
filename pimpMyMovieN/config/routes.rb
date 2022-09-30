Rails.application.routes.draw do
  get 'admin/users'
  get 'home/home'
  root 'home#index'
  resources :movies
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :admin, only: [:index]
  namespace :admin do
    root to: "admin#index"
    resources :users
    resources :movies
  end




end
