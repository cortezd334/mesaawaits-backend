# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "uri"
require "net/http"

url = URI("https://api.yelp.com/v3/businesses/search?term=restaurants&location=seattle&limit=50")

https = Net::HTTP.new(url.host, url.port);
https.use_ssl = true

request = Net::HTTP::Get.new(url)
request["Authorization"] = "Bearer yY8MMvI9GncyydB6VJb3GpoIQNUSB5PIJdDplASIX6FdoD9nG3U4ChOWWxBBFdNq7j2Pc94otrOZhXEKDyp5m_5HOInJVFqP9eWXcyZ0McAodMo5wpe2QnXkYrx8X3Yx"

response = https.request(request)
puts response.read_body