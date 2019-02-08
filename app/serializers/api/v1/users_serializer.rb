class Api::V1::UsersSerializer < ActiveModel::Serializer
  has_many :shows
  has_many :favorites
  attributes :id, :name, :password
end
