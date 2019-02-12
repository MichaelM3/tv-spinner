class ShowSerializer < ActiveModel::Serializer
  attributes :title, :genre, :schedule, :rating, :url, :description
  
  has_many :favorites
  has_many :users, through: :favorites
end
