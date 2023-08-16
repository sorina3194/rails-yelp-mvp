class RestaurantsController < ApplicationController
    def index
      @restaurants = Restaurant.all
    end

    def show
      @restaurant = Restaurant.find(params[:id])
      @review = Review.new
    end

    def new
      @restaurant = Restaurant.new
    end

    def create
      @restaurant = Restaurant.new(res_params)
      @restaurant.save
      redirect_to restaurant_path(@restaurant)
    end

    def delete
      @restaurant = Restaurant.find(params[:id])
      @restaurant.destroy
      redirect_to restaurant_path(@restaurant)
    end
  private
    def res_params
      params.require(:restaurant).permit(:name, :address, :phone_number, :category)
    end
end
