class UsersController < ApplicationController

  def index
    @user = current_user.id
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

end
