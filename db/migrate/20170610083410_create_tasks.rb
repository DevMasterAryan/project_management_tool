class CreateTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :tasks do |t|
      t.string :name
      t.date :start_date
      t.date :end_date
      t.integer :task_project_id
      t.integer :task_assigned_user_id

      t.timestamps
    end
  end
end
