class FavoriteSerializer < ActiveModel::Serializer
  attributes %i[id user restaurant]
end
