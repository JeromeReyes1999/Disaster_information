class Comment < ApplicationRecord
  validates_presence_of :content

  belongs_to :post, counter_cache: :comments_count
  belongs_to :user

end
