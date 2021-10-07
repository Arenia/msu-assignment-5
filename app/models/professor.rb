class Professor < ApplicationRecord
  has_many :sections
  validates :name, presence: true, uniqueness: true
end
