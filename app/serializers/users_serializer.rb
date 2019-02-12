class UserSerializer < ActiveModel::Serializer
  attributes :name, :password_digest

  has_many :favorites
  has_many :shows, through: :favorites
end
