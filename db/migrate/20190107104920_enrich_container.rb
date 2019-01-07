class EnrichContainer < ActiveRecord::Migration[5.2]
  def change
    add_column :containers, :client_id, :integer
    add_foreign_key :containers, :users, column: :client_id
  end
end
