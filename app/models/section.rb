class Section < ApplicationRecord
  belongs_to :course
  belongs_to :professor
  belongs_to :semester
  has_and_belongs_to_many :students
  validates :course, presence:true
  validates_associated :course
  validates :professor, presence:true
  validates_associated :professor
  validates :semester, presence:true
  validates_associated :semester
end
