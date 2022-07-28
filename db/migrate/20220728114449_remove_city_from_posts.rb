class RemoveCityFromPosts < ActiveRecord::Migration[6.1]
  def change
    remove_column :posts, :city, :string
  end
end
