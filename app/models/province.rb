class Province < ApplicationRecord
  has_many :city
  has_many :posts
  belongs_to :region
end
