class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.string :title
      t.text :abstract
      t.string :isapproved
      t.integer :course_id, :limit => 8
      t.integer :team_id, :limit => 8

      t.timestamps
    end

    execute <<-SQL
      ALTER TABLE projects
        ADD CONSTRAINT fk_projects_team
        FOREIGN KEY (team_id)
        REFERENCES teams(id),
        ADD CONSTRAINT fk_projects_course
        FOREIGN KEY (course_id)
        REFERENCES courses(id)

    SQL

  end
end
