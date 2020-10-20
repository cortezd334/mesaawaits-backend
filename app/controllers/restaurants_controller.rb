class RestaurantsController < ApplicationController

    def index
        restaurants = Restaurant.all
        render json: restaurants
    end

    def show
        restaurant = Restaurant.find(params[:id])
        render json: restaurant
    end

    def create
        restaurant = Restaurant.find_restaurant(params)
        render json: restaurant
    end

    def update
        restaurant = Restaurant.find(params[:id])
        restaurant.update(restaurant_params)
        render json: restaurant
    end

    def destroy
        restaurant = Restaurant.find(params[:id])
        restaurant.destroy
        render json: {error: 'Your account has been deleted'}
    end

    private
    def restaurant_params
        params.require(:restaurant).permit(:name, :cuisine, :rating, :latitude, :longitude, :image)
    end

end
