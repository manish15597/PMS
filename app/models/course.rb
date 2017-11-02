class Course < ApplicationRecord
  belongs_to :faculty, class_name: 'Faculty',foreign_key: :faculty_id

  has_many :student_courses, foreign_key: :course_id,class_name: "StudentCourse", :dependent => :delete_all

  has_many :projects, foreign_key: :course_id, class_name: "Project", :dependent => :delete_all

  has_many :schedules, foreign_key: :course_id,class_name: "Schedule", :dependent => :delete_all

end
