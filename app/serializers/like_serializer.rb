class LikeSerializer < ActiveModel::Serializer
  belongs_to :user, :post
  attributes :id
end
