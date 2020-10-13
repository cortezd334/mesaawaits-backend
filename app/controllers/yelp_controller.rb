class YelpController < ApplicationController   
    def search
        rest_cuisine = params[:cuisine]  
        rest_location = params[:location]  

        response = RestClient.get("https://api.yelp.com/v3/businesses/search?term=#{rest_cuisine}&location=#{rest_location}&limit=50", headers={ Authorization: "Bearer #{ENV['YELP_KEY']}", 
        "x-requested-with": "xmlhttprequest", "Access-Control-Allow-Origin": "*",
        Accept: 'application/json'})
        results = JSON.parse(response)
        render json: results  

    end
end