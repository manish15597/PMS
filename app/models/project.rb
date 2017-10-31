class Project < ApplicationRecord

  belongs_to :team, class_name: 'Team',foreign_key: :team_id
  belongs_to :course, class_name: 'Course',foreign_key: :course_id

  validates_uniqueness_of :team_id, scope: :course_id

  has_many :submissions, foreign_key: :project_id, class_name: "Submission"

end
