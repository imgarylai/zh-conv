class PostSerializer < ActiveModel::Serializer
  attributes :id, :source, :result, :user_id, :option
end
