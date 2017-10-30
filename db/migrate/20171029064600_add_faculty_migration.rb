class AddFacultyMigration < ActiveRecord::Migration[5.1]
  def change
    add_foreign_key :faculties, :users, column: :users_id
  end
end
