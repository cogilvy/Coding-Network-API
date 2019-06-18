class User < ApplicationRecord
  has_many :posts, dependent: :destroy
  has_many :comments
  has_many :likes
  has_secure_password
  validates :username, uniqueness: true
end
