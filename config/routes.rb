Rails.application.routes.draw do
  devise_for :users, controllers: { sessions: 'users/sessions'}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "home#index"

  # User Routes
  get '/users/:id', to: 'users#show', as: 'user'
  # Location Routes
  get '/cities', to: 'locations#index'
  get '/cities/:id', to: 'locations#show', as: 'city'

end
