class Semester < ApplicationRecord
  has_many :sections
  validates :semester, presence: true, uniqueness: true
end
