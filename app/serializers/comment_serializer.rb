class CommentSerializer < ActiveModel::Serializer
  belongs_to :user
  belongs_to :post
  attributes :id, :content
end
