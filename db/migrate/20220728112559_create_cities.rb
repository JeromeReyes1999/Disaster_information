class CreateCities < ActiveRecord::Migration[6.1]
  def change
    create_table :cities do |t|
      t.string :name
      t.string :code
      t.boolean :is_capital
      t.boolean :is_city
      t.boolean :is_municipality
      t.belongs_to :province
      t.timestamps
    end
  end
end
