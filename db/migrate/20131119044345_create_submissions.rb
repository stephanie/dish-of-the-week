class CreateSubmissions < ActiveRecord::Migration
  def change
    create_table :submissions do |t|
      t.references :restaurant, index: true
      t.references :user, index: true
      t.string :dish_name
      t.text :dish_description
      t.binary :image
      t.integer :price
      t.string :blog_link
      t.string :status

      t.timestamps
    end
  end
end
