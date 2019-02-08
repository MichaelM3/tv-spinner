class Api::V1::ShowsSerializer < ActiveModel::Serializer
  has_many :users
  has_many :favorites
  attributes :id, :title, :genre, :schedule, :rating
end
