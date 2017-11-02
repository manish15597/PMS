class Schedule < ApplicationRecord

  belongs_to :course, class_name: 'Course',foreign_key: :course_id

  belongs_to :project, class_name: 'Project',foreign_key: :project_id

end
