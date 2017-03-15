Rails.application.routes.draw do
  devise_for :users, controllers: { sessions: 'users/sessions'}


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "home#index"

  # User Routes
  get '/users/:id', to: 'users#show', as: 'user'

  as :user do
    get 'users', :to => 'users#show', as: "user_root"
  end


  # Location Routes
  get '/cities', to: 'locations#index'
  get '/cities/:id', to: 'locations#show', as: 'city'

  # Articles Routes
  get '/articles', to: 'articles#index'
  get '/articles/new', to: 'articles#new', as: 'new_article'  
  post '/articles', to: 'articles#create' 

end
