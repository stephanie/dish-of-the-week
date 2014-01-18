class Dish < ActiveRecord::Base
  mount_uploader :image, ImageUploader

  belongs_to :restaurant

  validates :dish_name, presence: true
end
