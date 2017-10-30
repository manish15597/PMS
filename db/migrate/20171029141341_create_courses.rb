class CreateCourses < ActiveRecord::Migration[5.1]
  def change
    create_table :courses do |t|
      t.string :course_name

      t.integer :faculty_id, :limit => 8

      t.timestamps
    end


    execute <<-SQL
      ALTER TABLE courses
        ADD CONSTRAINT fk_courses_faculties
        FOREIGN KEY (faculty_id)
        REFERENCES faculties(users_id)
    SQL

  end
end
