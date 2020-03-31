class CategoriesController < ApplicationController

  def show 
    @category = Category.find(params[:id])
    @items = @category.items.page(params[:page]).per(5)
  end
end
