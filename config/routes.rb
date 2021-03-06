Rails.application.routes.draw do

  resources :students, only: [:show, :new, :index, :create]

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'

  root 'students#index'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
