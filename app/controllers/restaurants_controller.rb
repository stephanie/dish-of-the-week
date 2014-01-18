class RestaurantsController < ApplicationController
  before_action :get_restaurant, only: [ :edit, :update, :destroy ]

  respond_to :json

  def index
    @restaurants = params[:id] ? Restaurant.where('id in (?)', params[:id].split(",")) : Restaurant.all
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new( restaurant_params )

    if @restaurant.save
      redirect_to new_curated_post_path
    else
      head :unprocessable_entity
    end
  end  

  def update
    head( @restaurant.update(post_params) ? :ok : :unprocessable_entity )
  end

  def destroy
    @restaurant.destroy

    head :no_content
  end 

  private

  def get_restaurant
    head :not_found unless @restaurant = Restaurant.where('id = ?', params[:id]).take
  end

  def restaurant_params
    params.require(:restaurant).permit( :name, :price_range, :cuisine_type, :address, :tel, :latitude, :longitude, :url)
  end

end