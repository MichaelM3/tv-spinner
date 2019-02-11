class Api::V1::UsersSerializer < ActiveModel::Serializer
  has_many :favorites
  has_many :shows, through: :favorites
  attributes :id, :name, :password_digest
end
