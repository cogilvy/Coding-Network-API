class PostSerializer < ActiveModel::Serializer
  belongs_to :user
  has_many :likes
  has_many :comments
  attributes :id, :title, :content, :category
end
