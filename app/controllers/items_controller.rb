class ItemsController < ApplicationController
  before_action :set_item, only: [:update, :edit, :show, :destroy]
  
  def index
    @items = Item.includes(:images).order('created_at DESC')
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
  end

  def edit
  end  

  def update
    if @item.update(item_params)
      redirect_to item_path(@item.id)
    else
      redirect_to edit_item_path
    end
  end

  def destroy
    @item = Item.find(params[:id])
    if @item.destroy
      redirect_to items_path
    else
      redirect_to item_path
    end
  end
  
  def show
    @item = Item.find(params[:id])
    @comment = Comment.new
    @comments = @item.comments.includes(:user)
  end

  def top
    @items = Item.includes(:images).order('created_at DESC').limit(3)
  end
  
  private
  def item_params
    params.require(:item).permit(:name, :description, :size, :brand_id, :price, :condition, :wait, :postage, :category_id, :prefecture_id, :buyer_id, images_attributes: [:src, :_destroy, :id]).merge(user_id: current_user.id)  
  end

  def set_item
    @item = Item.find(params[:id])
  end

  
end
