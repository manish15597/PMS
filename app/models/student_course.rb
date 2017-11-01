class StudentCourse < ApplicationRecord

  belongs_to :student, class_name: 'Student',foreign_key: :student_id

  belongs_to :course, class_name: 'Course',foreign_key: :course_id

  validates_uniqueness_of :student_id, scope: :course_id

end
