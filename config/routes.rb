Rails.application.routes.draw do
  devise_for :users, controllers: { sessions: 'users/sessions'}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "home#index"

  # User Routes
  get '/users/:id', to: 'users#show', as: 'user'
  # Location Routes
  get '/cities', to: 'locations#index'

  # Articles Routes
  get '/articles', to: 'articles#index'
  get '/articles/new', to: 'articles#new', as: 'new_article'  
  post '/articles', to: 'articles#create' 
  
end
