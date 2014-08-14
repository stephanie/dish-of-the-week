object @curated_post

attributes :id, :dish_name, :dish_description, :up_vote, :down_vote, :blog_link

node :dish_image_url do
  @curated_post.image.url
end

child :restaurant do
  attributes :id, :name, :address, :tel, :cuisine_type, :price_range, :latitude, :longitude
end
