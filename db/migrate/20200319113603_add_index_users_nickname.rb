class AddIndexUsersNickname < ActiveRecord::Migration[5.0]
  def change
    add_index :users, [:nickname, :gender]
  end
end
