class Api::V1::UsersSerializer < ActiveModel::Serializer
  has_many :shows
  attributes :id, :name, :password
end
