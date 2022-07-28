class RemoveRegionFromPosts < ActiveRecord::Migration[6.1]
  def change
    remove_column :posts, :region, :string
  end
end
