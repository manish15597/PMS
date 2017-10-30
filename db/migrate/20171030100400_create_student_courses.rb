class CreateStudentCourses < ActiveRecord::Migration[5.1]
  def change
    create_table :student_courses do |t|
      t.integer :student_id , :limit => 8
      t.integer :course_id , :limit => 8

      t.timestamps
    end


    execute <<-SQL
      ALTER TABLE student_courses
        ADD CONSTRAINT fk_student-courses_course
        FOREIGN KEY (course_id)
        REFERENCES courses(id)
        ADD CONSTRAINT fk_student-courses_student
        FOREIGN KEY (student_id)
        REFERENCES students(users_id)

    SQL

  end
end
