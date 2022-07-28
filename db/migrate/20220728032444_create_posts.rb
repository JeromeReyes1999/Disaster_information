class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :content
      t.string :address
      t.string :short_url
      t.string :region
      t.string :city
      t.belongs_to :user
      t.belongs_to :category
      t.timestamps
    end
  end
end