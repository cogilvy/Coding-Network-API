class User < ApplicationRecord
  has_many :posts, dependent: :destroy
  has_many :comments, through: :posts
  has_many :likes, through: :posts
  has_secure_password
  validates :username, uniqueness: true
end
