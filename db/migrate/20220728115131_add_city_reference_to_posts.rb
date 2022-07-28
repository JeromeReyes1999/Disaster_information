class AddCityReferenceToPosts < ActiveRecord::Migration[6.1]
  def change
    add_reference :posts, :city
  end
end
