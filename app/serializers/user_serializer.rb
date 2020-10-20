class UserSerializer < ActiveModel::Serializer
  attributes %i[id name username age email reservations]
  has_many :reservations
  has_many :favorites
end
