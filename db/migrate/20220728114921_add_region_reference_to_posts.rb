class AddRegionReferenceToPosts < ActiveRecord::Migration[6.1]
  def change
    add_reference :posts, :region
  end
end
