Rails.application.routes.draw do
  devise_for :users
  root to: "cameras#index"
  resources :users, only: [:show]
  resources :cameras do
    resources :bookings, only: [:new, :create]
    resources :reviews, only: [:new, :create, :show]
  end  
  resources :reviews, only: [:destroy]
<<<<<<< Updated upstream
=======
  get '/dashboard', to: 'dashboard#main'
>>>>>>> Stashed changes
end
