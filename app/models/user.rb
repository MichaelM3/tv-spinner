class User < ApplicationRecord
  has_secure_password

  validates :name, presence: true
  validates :name, uniqueness: true
  validates :password, presence: true

  has_many :favorites
  has_many :shows, through: :favorites
end
