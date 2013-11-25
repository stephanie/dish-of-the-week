object false

child @dishes, object_root: false do

  attributes :id, :type, :dish_name, :dish_description, :price, :blog_link

  node :restaurant_name do |dish|
    dish.restaurant.name
  end

  node :href do |dish|
    dish_url(dish)
  end

  node :links do |dish|
    {
      restaurant: restaurant_url(dish.restaurant)
    }
  end

  node :linked do |dish|
    {
      restaurants: restaurants_url,
      dishes: dishes_url
    }
  end

end
