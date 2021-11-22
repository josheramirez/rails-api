class AddValueToAccuracy < ActiveRecord::Migration[5.1]
  def change
    add_column :accuracies, :value, :string
  end
end
