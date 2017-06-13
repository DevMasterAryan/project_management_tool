class User < ApplicationRecord
  after_create :set_developer_id
  rolify
  has_secure_password
  mount_uploader :image, ImageUploader
   has_many :created_projects, foreign_key: :project_owner_id, class_name: "Project", dependent: :destroy
  # has_many :created_tasks, foreign_key: :task_assigned_user_id, class_name: "Task"
  # has_many :assigned_tasks, through: :created_tasks, source: :project_owner
   
    #has_many :projects 
    has_many :user_tasks, foreign_key: :assigned_user_id
    has_many :task_assigned, through: :user_tasks, source: :assigned_developer



    #validations
    validates :first_name, :last_name, :email, :password, presence: true, on: :create
    validates :email, :uniqueness => { :case_sensitive => false }
    validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i

   private

   def set_developer_id
     if self.role=="developer"

      self.update(developer_id: self.id)
    end
   end

    
end
