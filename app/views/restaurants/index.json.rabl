collection @restaurants

attributes :name, :price_range, :cuisine_type

node :show_href do |restaurant|
  restaurant_url(restaurant)
end

node :index_href do |restaurant|
  restaurants_url
end