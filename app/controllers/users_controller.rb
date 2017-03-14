class UsersController < ApplicationController
  devise_for :users, controllers: { sessions: 'users/sessions' }
end
