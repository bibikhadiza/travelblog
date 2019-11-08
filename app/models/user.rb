class User < ApplicationRecord
  validates :name, presence: {message: 'User must have a name'}
  validates :location, presence: {message: 'user must have a location'}
  validates :dob, presence: {message: 'user must have a DOB'}
  has_many :posts
  has_many :locations, through: :posts
end