class ItemsController < ApplicationController
  def index
    
    @items = Item.includes(:images).all
    
  end
  def new
    
    @item = Item.new
    @item.images.new
    
    
  end
  
  def create
    
    @item = Item.create(item_params)
    if @item.save
      redirect_to items_path
    else
      redirect_to new_item_path
    end
  end

  def show
    @item = Item.includes(:images)
    @item = Item.find(params[:id])
  end

  def edit
    @item = Item.find(params[:id])
  end  

  def update
    @item = Item.find(params[:id])
    if @item.update(item_params)
      redirect_to "/items/#{@item.id}"
    else
      render :edit
    end
  end

  def destroy
    @item = Item.find(params[:id])
    @item.destroy
    redirect_to items_path
  end
  
  def show
    @item = Item.find(params[:id])
  end
  
  private
  def item_params
    params.require(:item).permit(:name, :description, :brand_id, :price, :condition, :wait, :postage, :category_id, :prefecture_id, :buyer_id, images_attributes: [:src, :destroy, :id]).merge(user_id: current_user.id)  
  end
end
