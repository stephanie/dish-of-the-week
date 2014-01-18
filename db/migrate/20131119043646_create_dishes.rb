class CreateDishes < ActiveRecord::Migration
  def change
    create_table :dishes do |t|
      t.references :restaurant, index: true
      t.string :type
      t.string :dish_name, index: true
      t.text :dish_description
      t.string :price, index: true
      t.string :blog_link
      t.boolean :is_accepted, :default => false
      t.string :published_on, index: true
      t.integer :up_vote, :default => 0
      t.integer :down_vote, :default => 0
      t.string :restaurant_id
      t.string :full_name

      t.timestamps
    end
  end
end
