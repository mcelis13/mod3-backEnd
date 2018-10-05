class ChatChannel < ApplicationCable::Channel
  def subscribed
      stream_from "chat_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def onChat(data)
     # Message.create(content: data['content'], conversation_id: data['conversation_id'], sender_id: data['sender_id']);
     ActionCable.server.broadcast('chat_channel', message: data['content']);
  end

  # def self.all_messages(messages)
  #   ActionCable.server.broadcast('chat_channel', history: messages)
  # end

end
