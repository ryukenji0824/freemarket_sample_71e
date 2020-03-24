class UsersController < ApplicationController

  def index
    @user_id = current_user.id
    @user = User.find(@user_id)
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

end
