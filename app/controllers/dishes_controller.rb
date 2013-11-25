class DishesController < ApplicationController

  respond_to :json

  def index
    if params[:restaurant_id]
      restaurant = Restaurant.includes(:dishes).find(params[:restaurant_id]) 
      @dishes = params[:id] ? restaurant.dishes.find('id in (?)', params[:id].split(",")) : restaurant.dishes
    else 
      @dishes = params[:id] ? Dish.includes(:restaurant).where('id in (?)', params[:id].split(",")) : Dish.includes(:restaurant).all
    end
  end
  
  def create

  end 

  def update

  end

  def destroy

  end 

end

