class CreateContainers < ActiveRecord::Migration[5.2]
  def change
    create_table :containers do |t|
      t.integer :quantity
      t.string :container_number
      t.date :eta
      t.integer :weight

      t.timestamps
    end
  end
end
