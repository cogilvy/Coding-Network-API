class UserSerializer < ActiveModel::Serializer
  has_many :posts
  has_many :comments
  has_many :likes, through: :posts
  attributes :id, :username
end
