class Api::V1::ShowsSerializer < ActiveModel::Serializer
  has_many :favorites
  has_many :users, through: :favorites
  attributes :id, :title, :genre, :schedule, :rating
end
