collection @submissions

attributes :dish_name, :dish_description, :blog_link, :is_accepted, :full_name

  node :restaurant_id do |submission|
    submission.restaurant.id
  end

  node :href do |submission|
    submission_url(submission)
  end

  node :links do |submission|
    {
      restaurant: restaurant_url(submission.restaurant)
    }
  end

  node :linked do |submission|
    {
      restaurants: restaurants_url,
      dishes: dishes_url
    }
  end
