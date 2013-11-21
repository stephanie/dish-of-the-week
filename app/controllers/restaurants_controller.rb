class RestaurantsController < ApplicationController

  respond_to :json

  def index
    @restaurants = params[:id] ? Restaurant.where('id = ?', params[:id]) : Restaurant.all
  end

  def create

  end 

  def update

  end

  def destroy

  end 

end