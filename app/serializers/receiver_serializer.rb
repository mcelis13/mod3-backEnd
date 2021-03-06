class ReceiverSerializer < ActiveModel::Serializer
  attributes :id, :name, :user_name, :conversations
  has_many :messages, serializer: MessageSerializer, include_nested_associations: true
  has_many :conversations, serializer: ConversationSerializer, include_nested_associations: true
end
