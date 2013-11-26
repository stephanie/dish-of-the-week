collection @submissions

attributes :dish_name, :dish_description, :blog_link, :is_accepted, :restaurant_neighborhood, :full_name

  node :restaurant_name do |submission|
    submission.restaurant.name
  end