class CreateDishes < ActiveRecord::Migration
  def change
    create_table :dishes do |t|
      t.references :restaurant, index: true
      t.string :course
      t.string :dish_name
      t.text :dish_description
      t.binary :image
      t.integer :price
      t.string :blog_link
      t.string :date_presented

      t.timestamps
    end
  end
end
