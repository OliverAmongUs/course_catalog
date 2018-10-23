class Course < ApplicationRecord
  has_many :enrollments
  has_many :users, through: :enrollments
  has_and_belongs_to_many :subjects

  def self.search_by(search_term)

    where("LOWER (course_name) LIKE :search", search_term: "%#{search_term}%")
  end

end
