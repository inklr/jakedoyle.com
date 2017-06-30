class AddFieldsToMessages < ActiveRecord::Migration[5.1]
  def change
    add_column :messages, :budget, :int
    add_column :messages, :website, :string
    add_column :messages, :project_date, :date
  end
end
