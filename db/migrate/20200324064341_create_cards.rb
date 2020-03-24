class CreateCards < ActiveRecord::Migration[5.0]
  def change
    create_table :cards do |t|
      t.text       :token,      null: false
      t.references :user ,      null: false
      t.timestamps
    end
    add_foreign_key :cards, :users
  end
end
