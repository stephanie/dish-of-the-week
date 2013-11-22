class CreateDishes < ActiveRecord::Migration
  def change
    create_table :dishes do |t|
      t.references :restaurant, index: true
      t.string :type
      t.string :dish_name
      t.text :dish_description
      t.binary :image
      t.string :price
      t.string :blog_link
      t.boolean :is_accepted, :default => false
      t.string :published_on
      t.integer :up_vote
      t.integer :down_vote
      t.integer :user_id

      t.timestamps
    end
  end
end
