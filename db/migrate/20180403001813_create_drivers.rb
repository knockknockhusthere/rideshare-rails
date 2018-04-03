class CreateDrivers < ActiveRecord::Migration[5.1]
  def change
    create_table :drivers do |t|
      t.int :id
      t.string :name
      t.int :vin

      t.timestamps
    end
  end
end
