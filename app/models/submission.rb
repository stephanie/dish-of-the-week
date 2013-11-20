class Submission < ActiveRecord::Base
  belongs_to :restaurant
  belongs_to :user

  validates :status, inclusion: { in: %w(pending approved archived), message: "%{value} is not a valid status" }
end
