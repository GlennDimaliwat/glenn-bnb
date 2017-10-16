Rails.application.routes.draw do

  root 'listings#index'

  devise_for :users

  resources :listings do
    resources :conversations do
      resources :messages
    end
  end
  get '/inbox' => 'conversations#index'

  get '/support' => 'support#new'
  post '/support' => 'support#create'
  
  get '/bookings/new' => 'bookings#new', as: 'new_booking'
  post '/bookings' => 'bookings#create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
