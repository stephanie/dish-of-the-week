class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.references :restaurant, index: true
      t.string :score
      t.string :comment

      t.timestamps
    end
  end
end
