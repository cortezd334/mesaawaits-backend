class RestaurantSerializer < ActiveModel::Serializer
  attributes %i[id name cuisine rating latitude longitude image]
end
