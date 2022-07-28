class Region < ApplicationRecord
  has_many :provinces
  has_many :posts
end
