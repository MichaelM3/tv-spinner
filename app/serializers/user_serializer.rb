class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :password

  has_many :favorites
  has_many :shows, through: :favorites
end
