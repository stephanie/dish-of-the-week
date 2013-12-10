class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :address
      t.float :latitude
      t.float :longitude
      t.string :tel
      t.string :cuisine_type
      t.string :price_range
      t.string :url

      t.timestamps
    end
  end
end
