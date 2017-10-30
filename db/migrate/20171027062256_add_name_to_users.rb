class AddNameToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :name, :string
    add_column :users, :usertype, :integer
    add_column :users, :is_female, :boolean, default: false   
  end
end
