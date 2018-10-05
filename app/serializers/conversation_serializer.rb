class ConversationSerializer < ActiveModel::Serializer
  attributes :sender_id, :receiver_id, :id
end
