class AddConditionIdToItems < ActiveRecord::Migration[5.0]
  def change
    add_column :items, :condition_id, :integer
  end
end
