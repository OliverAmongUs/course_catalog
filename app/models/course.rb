class Course < ApplicationRecord
  has_many :enrollments
  has_many :users, through: :enrollments
  has_and_belongs_to_many :subjects


end
