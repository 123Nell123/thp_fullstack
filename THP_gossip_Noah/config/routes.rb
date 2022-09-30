Rails.application.routes.draw do
  root 'app#landing'
  get '/team', to: 'app#team'
  get '/contact', to: 'app#contact'
  post 'gossip/:id', to: 'comment#create'

  resources :session, only: [:new, :create, :destroy]
  resources :gossip do
    resources :comment
  end
  resources :like, only: [:create, :destroy]
  resources :user
  resources :city
end
