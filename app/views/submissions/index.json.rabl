collection @submissions

attributes :dish_name, :dish_description, :blog_link, :is_accepted, :restaurant_neighborhood

  node :restaurant_name do |submission|
    submission.restaurant.name
  end


  node :user_first_name do |submission|
    submission.user.first_name
  end


  node :user_last_name do |submission|
    submission.user.last_name
  end
