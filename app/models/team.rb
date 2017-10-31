class Team < ApplicationRecord

  has_many :student_teams, foreign_key: :team_id, class_name: "StudentTeam"

  has_many :projects, foreign_key: :team_id, class_name: "Project"
end
