class CommentSerializer < ActiveModel::Serializer
  attributes :id, :book_id, :content
  belongs_to :book
end
