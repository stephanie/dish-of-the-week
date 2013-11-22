class Submission < Dish
  belongs_to :user
  validates :is_accepted, :inclusion => {:in => [true, false]}

end
