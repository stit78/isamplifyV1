class CreateNestedElements < ActiveRecord::Migration[5.2]
  def change
    create_table :nested_elements do |t|
      t.boolean :unique_label
      t.string :label
      t.references :element, foreign_key: true
      t.references :unit, foreign_key: true
      t.references :provenance, foreign_key: true

      t.timestamps
    end
  end
end
