class RemoveVin < ActiveRecord::Migration[5.1]
  def change
    remove_column :drivers, :vin
  end
end
