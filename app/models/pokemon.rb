class Pokemon < ApplicationRecord
  validates :name, uniqueness: true
  has_many :comments
  has_many :likes
end
