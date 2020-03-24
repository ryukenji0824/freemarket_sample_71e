class UsersController < ApplicationController

  before_action :set_user, only: :show

  def index
    @user = User.find(current_user.id)
  end

  def show
  end


  private
  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(user).permit(:nickname, :email, :introduction, :password, :password_confirmation)
  end


end
