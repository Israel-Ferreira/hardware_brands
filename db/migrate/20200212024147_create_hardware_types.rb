class CreateHardwareTypes < ActiveRecord::Migration[6.0]
  def change
    create_table :hardware_types do |t|
      t.string :description
      t.string :acronym

      t.timestamps
    end
  end
end
