class Category < ApplicationRecord
  validates_presence_of :name
  has_many :post, dependent: :restrict_with_error
end
