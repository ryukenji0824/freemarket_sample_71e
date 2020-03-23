class ItemsController < ApplicationController
  
  def new
    @item = Item.new
  end
  
  def create
    Item.create(item_params)
  end
  
  def show
  end
  
  private
  def item_params
    params.require(:item).permit(:name, :descripton, :price, :buyer_id, :size, :condition, :wait, :postage, :category_id, :brand_id)
  end
end
