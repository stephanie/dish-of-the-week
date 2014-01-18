class DishesController < ApplicationController
  before_action :get_restaurant, only: :index

  def index
    respond_to do |format|
      format.html {
        @dishes = if @restaurant
          params[:id] ? @restaurant.dishes.find('id in (?)', params[:id].split(",")) : @restaurant.dishes
        else 
          params[:id] ? Dish.includes(:restaurant).where('id in (?)', params[:id].split(",")) : Dish.includes(:restaurant).all
        end
      }

      format.html { @dishes = Dishes.all }
    end
  end
  
  def create
    
  end 

  def update

  end

  def destroy

  end

  private

  def get_restaurant
    @restaurant = Restaurant.includes(:dishes).find(params[:restaurant_id]) if params[:restaurant_id]
  end

end

