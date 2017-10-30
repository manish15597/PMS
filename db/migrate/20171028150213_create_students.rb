class CreateStudents < ActiveRecord::Migration[5.1]
  def change
    create_table :students, id:false do |t|
      t.string :name
      t.integer :reg_no
      t.primary_key :users_id

      t.timestamps
    end
  end
end
