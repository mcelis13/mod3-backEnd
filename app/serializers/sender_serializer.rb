class SenderSerializer < ActiveModel::Serializer
  attributes :id, :name, :user_name, :conversations
end