class Post < ApplicationRecord
  validates_presence_of :title
  validates_presence_of :content
  belongs_to :user
  belongs_to :category
  has_many :comments, dependent: :restrict_with_error
end
