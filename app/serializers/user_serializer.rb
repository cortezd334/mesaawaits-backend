class UserSerializer < ActiveModel::Serializer
  attributes :id, :username
  has_many :reservations
  has_many :favorites
end
