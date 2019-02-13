class FavoriteSerializer < ActiveModel::Serializer
  attributes :user_id, :show_id

  belongs_to :user
  belongs_to :show
end
