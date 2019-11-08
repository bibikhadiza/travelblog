class Location < ApplicationRecord
  validates :continent, presence: true
  validates :name, presence: true
  has_many :posts
  has_many :users, through: :posts
end