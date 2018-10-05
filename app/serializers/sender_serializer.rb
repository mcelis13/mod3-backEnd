class SenderSerializer < ActiveModel::Serializer
  attributes :id, :name, :user_name, :conversations, :messages
  has_many :messages, serializer: MessageSerializer, include_nested_associations: true
  has_many :conversations, serializer: ConversationSerializer, include_nested_associations: true
end
