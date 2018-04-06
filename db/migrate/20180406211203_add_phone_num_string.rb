class AddPhoneNumString < ActiveRecord::Migration[5.1]
  def change
    add_column :passengers, :phone_num, :string
  end
end
