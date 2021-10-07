class Course < ApplicationRecord
  belongs_to :department
  has_many :sections
  validates :hours, presence: true, length: {maximum: 1}
  validates :department_id, presence: true
  validates :number, presence: true, length: {is: 4}, uniqueness: true
end
