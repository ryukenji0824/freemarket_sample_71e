class UsersController < ApplicationController

  before_action :set_user_params, only: [:show, :edit, :update]
  before_action :set_user_current, only: :index

  def index
    @items = @user.items
  end

  def show
    @items = @user.items
  end

  def edit
  end

  def update
    @user.update(update_params)
    sign_in(:user, @user)
  end


  private
  
  def set_user_params
    @user = User.find(params[:id])
  end

  def set_user_current
    @user = User.find(current_user.id)
  end

  def update_params
    params.require(:user).permit(:nickname, :introduction, :password, :password_confirmation)
  end


end
