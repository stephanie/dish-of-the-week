class Restaurant < ActiveRecord::Base
  has_many :dishes, dependent: :destroy
  has_many :reviews, dependent: :destroy
end
