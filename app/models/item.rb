class Item < ApplicationRecord
  validates :name, :descripton, :price, :buyer_id, :size, :condition, :wait, :postage, :category_id, :brand_id, presence: true
  
  belongs_to :user
  has_many :comments
  has_many :images
  belongs_to :brand
  belongs_to :category

end
