class BookSerializer < ActiveModel::Serializer
  attributes :id, :title, :author
  has_many :comments
end
