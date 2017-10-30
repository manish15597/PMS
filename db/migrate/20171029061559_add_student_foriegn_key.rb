class AddStudentForiegnKey < ActiveRecord::Migration[5.1]
  def change
    add_foreign_key :students, :users, column: :users_id
  end
end
