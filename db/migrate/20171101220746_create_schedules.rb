class CreateSchedules < ActiveRecord::Migration[5.1]
  def change
    create_table :schedules do |t|
      t.integer :project_id, :limit => 8
      t.integer :course_id, :limit => 8
      t.datetime :start_time
      t.datetime :end_time

      t.timestamps
    end

    execute <<-SQL
      ALTER TABLE schedules
        ADD CONSTRAINT fk_schedules_course
        FOREIGN KEY (course_id)
        REFERENCES courses(id),
        ADD CONSTRAINT fk_schedules_project
        FOREIGN KEY (project_id)
        REFERENCES projects(id)
    SQL


  end
end
