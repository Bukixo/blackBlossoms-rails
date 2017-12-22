class PostSerializer < ActiveModel::Serializer
  attributes :id, :date, :heading, :body
end
