class AddressesController < ApplicationController
  def edit
    @user = User.find(params[:id])
    @address = @user.address
  end

  def update
    @user = User.find(params[:id])
    @address = @user.address
    @address.update(update_params)
    sign_in(:user, @user)
  end

  private
  def update_params
    params.require(:address).permit(:family_name, :first_name, :family_name_kana, :first_name_kana, :postal_code, :city, :local, :block, :building, :number)
  end
end
