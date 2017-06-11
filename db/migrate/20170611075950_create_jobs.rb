class CreateJobs < ActiveRecord::Migration[5.1]
  def change
    create_table :jobs do |t|
      t.string :company
      t.date :start_date
      t.date :end_date
      t.boolean :current_job

      t.timestamps
    end
  end
end
