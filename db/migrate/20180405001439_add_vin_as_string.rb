class AddVinAsString < ActiveRecord::Migration[5.1]
  def change
    add_column :drivers, :vin, :string
  end
end
