object false

child @restaurants, object_root: false do

  attributes :name, :price_range, :cuisine_type, :location, :tel


  node :show_href do |restaurant|
    restaurant_url(restaurant)
  end

  node :index_href do |restaurant|
    restaurants_url
  end
  
  node :links do |restaurant| {
    dishes: restaurant_dishes_url(restaurant)
  }
  end

  child :dishes do
    attribute :dish_name
    attribute :type
  end

end