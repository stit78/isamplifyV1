class CreateElements < ActiveRecord::Migration[5.2]
  def change
    create_table :elements do |t|
      t.boolean :unique_label
      t.string :label
      t.string :status_available
      t.boolean :has_nested_element
      t.references :company_name, foreign_key: true
      t.references :unit, foreign_key: true

      t.timestamps
    end
  end
end
