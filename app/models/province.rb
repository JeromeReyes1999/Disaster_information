class Province < ApplicationRecord
  has_many :city
  belongs_to :region
end
