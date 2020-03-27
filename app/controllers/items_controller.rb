class ItemsController < ApplicationController
  before_action :set_item, only: [:update, :edit, :destroy]
  before_action :move_to_root, except: [:index, :show]
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
      redirect_to items_path, notice: "出品しました"
    else
      redirect_to new_item_path, notice: "出品できません。入力必須項目を確認してください"
    end
  end

  

  def edit
  end  

  def update
    if @item.update(item_params)
      redirect_to item_path(@item.id), notice: "商品情報を編集しました"
    else
      redirect_to edit_item_path, notice: "編集できません。入力必須項目を確認してください"
    end
  end

  def destroy
    if @item.destroy
      redirect_to items_path, notice: "商品を削除しました"
    else
      redirect_to item_path, notice: "商品を削除できませんでした"
    end
  end
  
  def show
    @item = Item.includes(:images)
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

  def move_to_root
    redirect_to root_path unless user_signed_in?
  end

  
end
