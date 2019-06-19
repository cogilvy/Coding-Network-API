class UserSerializer < ActiveModel::Serializer
  has_many :posts
  has_many :comments
  has_many :followed_users, foreign_key: :follower_id, class_name: 'Follow'
  has_many :followees, through: :followed_users

  has_many :following_users, foreign_key: :followee_id, class_name: 'Follow'
  has_many :followers, through: :following_users
  has_many :likes, through: :posts
  attributes :id, :username
end
