Rails.application.routes.draw do
  devise_for :users, controllers: { sessions: 'users/sessions'}

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "home#index"

  # User Routes
  get '/users/:id', to: 'users#show', as: 'user'
  as :user do
    get '/users', to: 'users#show', as: "user_root"
  end

  devise_scope :user do
    get 'settings', to: 'users/registrations#account', as: "user_account"
  end


  # Location Routes
  get '/cities', to: 'locations#index'
  get '/cities/:id', to: 'locations#show', as: 'city'

  # Articles Routes
  get '/articles', to: 'articles#index', as: 'articles'

  get '/articles/new', to: 'articles#new', as: 'new_article'
  get '/articles/:id', to: 'articles#show', as: "article"
  post '/articles', to: 'articles#create'
  get '/articles/:id/edit', to: 'articles#edit', as: 'edit_article'
  patch '/articles/:id', to: 'articles#update'
  delete '/articles/:id', to: 'articles#destroy'

end
