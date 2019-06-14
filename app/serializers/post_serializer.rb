class PostSerializer < ActiveModel::Serializer
  belongs_to :user
  has_many :likes, :comments
  attributes :id, :title, :content, :category
end
