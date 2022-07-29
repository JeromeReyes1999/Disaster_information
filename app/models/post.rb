class Post < ApplicationRecord
  validates_presence_of :title
  validates_presence_of :content
  belongs_to :user
  belongs_to :category
  belongs_to :region
  belongs_to :province
  belongs_to :city
  has_many :comments, dependent: :restrict_with_error

  mount_uploader :image, ImageUploader

  before_create :generate_unique_number, :generate_address

  def generate_unique_number
    loop do
      @short = rand(0..9999).to_s.rjust(4, '0')
      break unless Post.exists?(short_url: @short)
    end
    self.short_url = @short
  end

  def generate_address
    user_address = "#{self.region.name}, #{self.province.name}, #{self.city.name}"
    self.address = user_address
  end

end