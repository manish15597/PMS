class Course < ApplicationRecord
  belongs_to :faculty, class_name: 'Faculty',foreign_key: :faculty_id

  has_many :student_courses, foreign_key: :course_id,class_name: "StudentCourse"


end
