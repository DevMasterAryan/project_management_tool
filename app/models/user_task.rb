class UserTask < ApplicationRecord
	belongs_to :assigned_developer, class_name: 'User'
	belongs_to :task_project, class_name: 'Project'
end
