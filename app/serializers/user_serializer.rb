class UserSerializer < ActiveModel::Serializer
  has_many :posts
  has_many :comments, through: :posts
  has_many :likes, through: :posts
  attributes :id, :username
end
