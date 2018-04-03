class CreateTrips < ActiveRecord::Migration[5.1]
  def change
    create_table :trips do |t|
      t.int :id
      t.int :driver_id
      t.int :passenger_id
      t.int :rating
      t.int :cost

      t.timestamps
    end
  end
end
