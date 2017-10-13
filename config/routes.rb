Rails.application.routes.draw do

  root 'listings#index'

  devise_for :users

  resources :listings do
    resources :conversations do
      resources :messages
    end
  end

  get '/support' => 'support#new'
  post '/support' => 'support#create'

  get '/inbox' => 'conversations#index'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
