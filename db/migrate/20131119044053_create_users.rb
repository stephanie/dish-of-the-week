class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.references :submission, index: true
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :password
      t.string :password_confirmation 
      t.string :tagline
      t.integer :user_score

      t.timestamps
    end
  end
end
