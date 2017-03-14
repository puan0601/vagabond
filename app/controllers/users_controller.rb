class UsersController < ApplicationController
  devise_for :users, controllers: { sessions: 'users/sessions' }

  def show
    @user = User.find(params[:id])
  end
end
