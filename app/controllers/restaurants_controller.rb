class RestaurantsController < ApplicationController

  respond_to :json

  def index
    @restaurants = params[:id] ? Restaurant.where('id in (?)', params[:id].split(",")) : Restaurant.all
  end

  def create

  end 

  def update

  end

  def destroy

  end 

end