class User < ActiveRecord::Base
  has_many :accepted_submissions
  has_many :pending_submissions
end
