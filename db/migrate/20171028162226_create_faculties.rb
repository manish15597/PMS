class CreateFaculties < ActiveRecord::Migration[5.1]
  def change
    create_table :faculties, id:false do |t|
      t.string :name
      t.primary_key :users_id

      t.timestamps
    end
  end
end
