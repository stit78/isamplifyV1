class EnrichUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :phone_number, :string
    add_column :users, :sample_type, :string
    add_reference :users, :right, foreign_key: true
    add_reference :users, :company_name, foreign_key: true
  end
end
