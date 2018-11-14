class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show]

  def index
    @restaurants = Restaurant.all
  end

  def show
    @reviews = Review.where(restaurant: @restaurant).reverse
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.save
    redirect_to restaurant_path(@restaurant)
  end
end

private

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

def restaurant_params
  # *Strong params*: You need to *whitelist* what can be updated by the user
  # Never trust user data!
  params.require(:restaurant).permit(:name, :address, :phone, :category)
end
