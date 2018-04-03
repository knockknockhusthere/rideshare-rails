class NewPassengerTable < ActiveRecord::Migration[5.1]
  def change
    create_table :passengers do |t|
      t.integer :id
      t.string :name
      t.integer :phone_num

      t.timestamps
  end
end
