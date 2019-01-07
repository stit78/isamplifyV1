class CreateSamples < ActiveRecord::Migration[5.2]
  def change
    create_table :samples do |t|
      t.string :stage
      t.string :status
      t.text :comment
      t.integer :quantity_available
      t.string :potential_application
      t.string :sample_number
      t.integer :weight
      t.references :provenance, foreign_key: true
      t.references :container, foreign_key: true

      t.timestamps
    end
  end
end
