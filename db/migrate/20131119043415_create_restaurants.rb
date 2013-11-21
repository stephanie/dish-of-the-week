class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :location
      t.integer :phone
      t.string :cuisine_type
      t.string :price_range
      t.string :menu_url

      t.timestamps
    end
  end
end
