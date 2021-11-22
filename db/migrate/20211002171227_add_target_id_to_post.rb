class AddTargetIdToPost < ActiveRecord::Migration[5.1]
  def change
    add_column :posts, :target_id, :integer
    add_index :posts, :target_id   #adds index
  end
end
