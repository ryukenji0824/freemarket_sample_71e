class CreateCategoryAncestries < ActiveRecord::Migration[5.0]
  def change
    create_table :category_ancestries do |t|
      t.string :name, null: false
      t.string :ancestry, index: true
      t.timestamps
    end
  end
end
