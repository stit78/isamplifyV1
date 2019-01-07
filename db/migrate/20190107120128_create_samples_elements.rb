class CreateSamplesElements < ActiveRecord::Migration[5.2]
  def change
    create_table :samples_elements do |t|
      t.references :sample, foreign_key: true
      t.references :element, foreign_key: true
      t.string :value

      t.timestamps
    end
  end
end
