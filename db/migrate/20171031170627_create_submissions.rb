class CreateSubmissions < ActiveRecord::Migration[5.1]
  def change
    create_table :submissions do |t|
      t.integer :project_id, :limit => 8
      t.text :report
      t.text :feedback

      t.timestamps
    end


    execute <<-SQL
      ALTER TABLE submissions
        ADD CONSTRAINT fk_submissions_project
        FOREIGN KEY (project_id)
        REFERENCES projects(id)
    SQL

  end
end
