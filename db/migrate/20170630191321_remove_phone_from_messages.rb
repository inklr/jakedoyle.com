class RemovePhoneFromMessages < ActiveRecord::Migration[5.1]
  def change
    remove_column :messages, :phone_number, :string
  end
end
