class CreateMessages < ActiveRecord::Migration[5.1]
  def change
    create_table :messages do |t|
      t.string :first_name
      t.string :last_name
      t.string :email_address
      t.string :company_name
      t.string :phone_number
      t.text :message

      t.timestamps
    end
  end
end
