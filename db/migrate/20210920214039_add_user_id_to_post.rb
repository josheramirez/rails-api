class AddUserIdToPost < ActiveRecord::Migration[5.1]
  def change
    add_column :posts, :user_id, :integer
    add_index :posts, :user_id   #adds index
  end
end
