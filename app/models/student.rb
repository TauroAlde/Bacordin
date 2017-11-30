class Student < ActiveRecord::Base
  validates :tag_student, uniqueness: true
  validates :tag_student, presence: true
end
