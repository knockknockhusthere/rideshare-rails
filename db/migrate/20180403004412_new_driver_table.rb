class NewDriverTable < ActiveRecord::Migration[5.1]
  def change
    create_table :drivers do |t|
      t.integer :id
      t.string :name
      t.integer :vin

      t.timestamps
  end
end
