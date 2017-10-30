class CreateStudentTeams < ActiveRecord::Migration[5.1]
  def change
    create_table :student_teams do |t|
      t.integer :student_id, :limit => 8
      t.integer :team_id, :limit => 8

      t.timestamps
    end

    execute <<-SQL
      ALTER TABLE student_teams
        ADD CONSTRAINT fk_student_teams_team
        FOREIGN KEY (team_id)
        REFERENCES teams(id),
        ADD CONSTRAINT fk_student_teams_student
        FOREIGN KEY (student_id)
        REFERENCES students(users_id)

    SQL


  end
end
