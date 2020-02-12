class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :description
      t.references :hardware_type, null: false, foreign_key: true
      t.references :hardware_brand, null: false, foreign_key: true
      t.string :image

      t.timestamps
    end
  end
end
