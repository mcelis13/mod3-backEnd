class MessageSerializer < ActiveModel::Serializer
  attributes :conversation_id, :content, :sender
end
