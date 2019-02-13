class UserSerializer < ActiveModel::Serializer
  attributes :name, :password

  has_many :favorites
  has_many :shows, through: :favorites
end
