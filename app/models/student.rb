class Student < ApplicationRecord
  belongs_to :users,  class_name: User
  self.primary_key = :users_id;

  has_many :student_courses, foreign_key: :student_id,class_name: "StudentCourse", :dependent => :delete_all

  has_many :student_teams, foreign_key: :student_id, class_name: "StudentTeam", :dependent => :delete_all

end
