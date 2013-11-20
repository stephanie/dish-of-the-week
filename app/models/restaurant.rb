class Restaurant < ActiveRecord::Base
  has_many :dishes, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_many :submissions, dependent: :destroy
end
