class StudentTeam < ApplicationRecord

  belongs_to :student, class_name: 'Student',foreign_key: :student_id

  belongs_to :team, class_name: 'Team',foreign_key: :team_id

end
