class CreateUserTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :user_tasks do |t|
      t.integer :assigned_user_id
      t.integer :assigned_task_id

      t.timestamps
    end
  end
end
