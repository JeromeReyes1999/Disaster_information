class AddProvinceReferenceToPosts < ActiveRecord::Migration[6.1]
  def change
    add_reference :posts, :province
  end
end
