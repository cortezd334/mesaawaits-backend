class ReservationSerializer < ActiveModel::Serializer
  attributes %i[id date time party_size occasion notes restaurant_id restaurant]
  belongs_to :user
  belongs_to :restaurant
end
