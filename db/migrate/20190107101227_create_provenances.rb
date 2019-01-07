class CreateProvenances < ActiveRecord::Migration[5.2]
  def change
    create_table :provenances do |t|
      t.string :name
      t.string :prefix

      t.timestamps
    end
  end
end
