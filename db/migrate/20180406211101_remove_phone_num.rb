class RemovePhoneNum < ActiveRecord::Migration[5.1]
  def change
    remove_column :passengers, :phone_num
  end
end
