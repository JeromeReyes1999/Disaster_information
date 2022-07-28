class Post < ApplicationRecord
  validates_presence_of :title
  validates_presence_of :content
  belongs_to :user
  belongs_to :category
  belongs_to :region
  belongs_to :province
  belongs_to :city
  has_many :comments, dependent: :restrict_with_error


  before_create :generate_unique_number

  def generate_unique_number
    loop do
      @short = rand(0..9999).to_s.rjust(4, '0')
      break unless Post.exists?(short_url: @short)
    end
    self.short_url = @short
  end
end