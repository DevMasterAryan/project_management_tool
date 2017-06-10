class Task < ApplicationRecord
	# belongs_to :project_owner, class_name: "User"
	# belongs_to :task_from_project, class_name: "Project"

	belongs_to :user
	belongs_to :project


    #validations
	validates :name, :start_date, :end_date, presence: true
end
