class Restaurant < ApplicationRecord
    has_many :reservations
    has_many :favorites
    has_many :users, through: :reservations
    has_many :users, through: :favorites

    def self.find_restaurant(params)
        where(:name => params[:name], :latitude => params[:latitude], :longitude => params[:longitude]).first_or_create do  |restaurant|
            restaurant.cuisine = params[:cuisine]
            restaurant.rating = params[:rating]
            restaurant.image = params[:image]
        end
    end

end
