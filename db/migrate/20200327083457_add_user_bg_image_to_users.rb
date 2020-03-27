class AddUserBgImageToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :user_bg_image, :string
  end
end
