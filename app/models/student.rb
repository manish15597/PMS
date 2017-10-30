class Student < ApplicationRecord
  belongs_to :users,  class_name: User
  self.primary_key = :users_id;
end
