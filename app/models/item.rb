class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  validates :user_id, :name, :description, :size, :price, :condition, :wait, :postage, :category_id, :brand_id, :prefecture_id, presence: true
  belongs_to :user, optional: true
  has_many :comments
  belongs_to :brand
  belongs_to :category_ancestry
  has_many :images, dependent: :destroy
  accepts_nested_attributes_for :images, allow_destroy: true
  
  belongs_to_active_hash :prefecture
  belongs_to_active_hash :category
  belongs_to_active_hash :brand

  def previous
    Item.where("id < ?", self.id).order("id DESC").first
  end

  def next
    Item.where("id > ?", self.id).order("id ASC").first
  end
  
end
