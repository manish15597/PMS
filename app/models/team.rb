class Team < ApplicationRecord

  has_many :student_teams, foreign_key: :student_id, class_name: "StudentTeam"

end
