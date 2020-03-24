class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.references :user, foreign_key: true
      
      t.string      :name,        null: false
      t.text        :description,  null:false
      t.integer     :price,       null: false
      t.string     :size
      t.string     :condition,   null: false
      t.string     :wait,        null: false
      t.string     :postage,     null: false
      t.integer     :category_id,    null: false
      t.integer     :brand_id,       null: false
      t.integer     :prefecture_id,   null: false
      t.integer    :buyer_id
      t.timestamps
    end
  end
end
