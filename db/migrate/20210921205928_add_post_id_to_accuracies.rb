class AddPostIdToAccuracies < ActiveRecord::Migration[5.1]
  def change
    add_column :accuracies, :post_id, :integer
    add_index :accuracies, :post_id   #adds index
  end
end
