class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.string      :name,        null: false
      t.text        :description
      t.integer     :price,       null: false
      t.integer     :buyer_id
      t.string      :size
      t.string      :condition,   null: false
      t.string      :wait,        null: false
      t.integer     :postage,     null: false
      t.integer     :category_id, null: false, foregin_key: :true
      t.integer     :brand_id,    null: false, foregin_key: :true
      t.timestamps
    end
  end
end
