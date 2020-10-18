class ReservationSerializer < ActiveModel::Serializer
  attributes %i[id date party_size special_occasion notes restaurant_id]
  belongs_to :user
  belongs_to :restaurant
end
