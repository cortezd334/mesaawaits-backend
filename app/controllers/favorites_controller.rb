class FavoritesController < ApplicationController

    def index
        favorites = Favorite.all
        render json: favorites
    end

    def show
        favorite = Favorite.find(params[:id])
        render json: favorite
    end

    def create
        restaurant = Restaurant.find_restaurant(params)

        favorite = Favorite.new(restaurant_id: restaurant.id, user_id: @user.id)
            favorite.save
        render json: favorite
    end

    # def update
    #     favorite = Favorite.find(params[:id])
    #     favorite.update(favorite_params)
    #     render json: favorite
    # end

    def destroy
        favorite = Favorite.find(params[:id])
        favorite.destroy
        render json: {error: 'Your account has been deleted'}
    end

    private
    def favorite_params
        params.require(:favorite).permit(:user_id, :restaurant_id)
    end
end
