class CommentSerializer < ActiveModel::Serializer
  belongs_to :user, :post
  attributes :id, :content
end
