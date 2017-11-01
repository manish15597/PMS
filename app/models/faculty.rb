class Faculty < ApplicationRecord
  belongs_to :users, class_name: User
  self.primary_key = :users_id;
  has_many :courses, foreign_key: :faculty_id,class_name: "Course", :dependent => :delete_all
end
