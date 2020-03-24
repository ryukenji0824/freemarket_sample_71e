class UsersController < ApplicationController

  def index
    @user = current_user.id
    if @card = Card.find(@user).present?
      @card = Card.find(@user)
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

end
