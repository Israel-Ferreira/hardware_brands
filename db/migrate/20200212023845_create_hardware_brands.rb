class CreateHardwareBrands < ActiveRecord::Migration[6.0]
  def change
    create_table :hardware_brands do |t|
      t.string :description
      t.string :country
      t.string :logo_image

      t.timestamps
    end
  end
end
