class ShowSerializer < ActiveModel::Serializer
  attributes :id, :title, :genre, :schedule, :rating, :url, :description, :image

  has_many :favorites
  has_many :users, through: :favorites
end
