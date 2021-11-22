class CreateAccuracies < ActiveRecord::Migration[5.1]
  def change
    create_table :accuracies do |t|
      t.string :kind

      t.timestamps
    end
  end
end
