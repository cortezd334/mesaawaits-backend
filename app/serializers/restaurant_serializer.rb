class RestaurantSerializer < ActiveModel::Serializer
  attributes %i[id name cuisine rating latitude longitude image]
  has_many :reservations
  has_many :favorites
end
