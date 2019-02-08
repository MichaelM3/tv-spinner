class Api::V1::FavoritesSerializer < ActiveModel::Serializer
  belongs_to :user
  belongs_to :show
  attributes :id, :user_id, :show_id
end
