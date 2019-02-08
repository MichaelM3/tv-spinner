class Api::V1::ShowsSerializer < ActiveModel::Serializer
  belongs_to :user
  attributes :id, :title, :genre, :schedule, :rating
end
