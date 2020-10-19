# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# require "uri"
# require "net/http"

# url = URI("https://api.yelp.com/v3/businesses/search?term=restaurants&location=seattle&limit=50")

# https = Net::HTTP.new(url.host, url.port);
# https.use_ssl = true

# request = Net::HTTP::Get.new(url)
# request["Authorization"] = "Bearer #{ENV['yelp_key']}"

# response = https.request(request)
# puts response.read_body

# resp_json = JSON.parse(response)
# resp_json['businesses'].each do |restaurant|
#     debugger
#     rest = Restaurant.create(name: restaurant.name, cuisine: [restaurant.categories.each do |cat| cat.title], rating: restaurant.rating, latitude: restaurant.coordinates.latitude, longitude: restaurant.coordinates.longitude, image: restaurant.image_url)

d = User.create(name: 'danira', username: 'd', password: 'bacon', age: 30, email: 'd@gmail.com')

rest = Restaurant.create(name: 'DinTai', cuisine: 'chinese', rating: 4, latitude: 0, longitude: 0, image: 'https://s3-media1.fl.yelpcdn.com/bphoto/ZyQjV-wJQ2GHyX7l3jfbyg/o.jpg')

res = Reservation.create(date: '2020-11-29', party_size: 4, occasion: 'none', notes: 'feed me', restaurant_id: 1, user_id: 1)