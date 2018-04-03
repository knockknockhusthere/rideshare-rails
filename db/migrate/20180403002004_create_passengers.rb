class CreatePassengers < ActiveRecord::Migration[5.1]
  def change
    create_table :passengers do |t|
      t.int :id
      t.string :name
      t.int :phone_num

      t.timestamps
    end
  end
end
