class ReservationSerializer < ActiveModel::Serializer
  attributes %i[id date party_size special_occasion notes]
end
