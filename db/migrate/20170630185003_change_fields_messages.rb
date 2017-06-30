class ChangeFieldsMessages < ActiveRecord::Migration[5.1]
  def change
    remove_column :messages, :budget, :int
    add_column :messages, :budget, :decimal, :precision => 8, :scale => 2
  end
end
