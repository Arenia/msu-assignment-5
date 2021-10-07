class Student < ApplicationRecord
  has_and_belongs_to_many :sections
  validates :name, presence: true, uniqueness: true
  validates :identifier, presence: true, numericality: { only_integer: true, :greater_than => 899999999, less_than: 901000000}, uniqueness: true
end
