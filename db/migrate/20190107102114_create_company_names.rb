class CreateCompanyNames < ActiveRecord::Migration[5.2]
  def change
    create_table :company_names do |t|
      t.string :name
      t.string :address
      t.string :logo
      t.string :associated_ico
      t.string :trading_preferences
      t.string :supplier_number
      t.references :provenance, foreign_key: true

      t.timestamps
    end
  end
end
