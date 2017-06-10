class Project < ApplicationRecord

	belongs_to :project_owner,-> {where(role: "project_owner")}, class_name: "User"
	# has_many :created_tasks, foreign_key: :task_project_id, class_name: "Task"

	#belongs_to :user
	has_many :tasks, foreign_key: :task_project_id



	#validations
	validates :name, :start_date, :end_date, presence: true

end
