class ChatChannel < ApplicationCable::Channel
  def subscribed
     stream_from "chat_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def onChat(data)
    Action.server.broadcast('chat_channel', message: data['message'])
  end

  # def self.all_messages(messages)
  #   ActionCable.server.broadcast('chat_channel', history: messages)
  # end

end
