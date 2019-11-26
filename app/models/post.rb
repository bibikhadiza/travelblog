class Post < ApplicationRecord
  validates :title, presence: {message: 'Post must have title'}
  validates :content, presence: {message: 'Post must have content'}
  belongs_to :user
  belongs_to :location, optional: true
end