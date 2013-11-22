class Dish < ActiveRecord::Base
  belongs_to :restaurant
  validates :dish_name, presence: true
end
