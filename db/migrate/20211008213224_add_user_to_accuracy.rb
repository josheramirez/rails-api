class AddUserToAccuracy < ActiveRecord::Migration[5.1]
  def change
    add_column :accuracies, :user_id, :integer
    add_index :accuracies, :user_id   #adds index
  end
end
