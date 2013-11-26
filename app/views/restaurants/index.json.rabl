object false

child @restaurants, object_root: false do

  attributes :id, :name, :address, :price_range, :cuisine_type, :location, :tel

  
  node :href do |restaurant|
    restaurant_url(restaurant)
  end
  
  node :links do |restaurant| {
    dishes: restaurant_dishes_url(restaurant)
  }
  end

  node :linked do |restaurant| {
    restaurants: restaurants_url
  }
  end

end