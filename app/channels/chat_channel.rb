class ChatChannel < ApplicationCable::Channel
  def subscribed
     stream_from "chat_channel"
     ChatChannel.all_messages(Message.all.order(id: :desc).limit(25).reorder(:id :asc))
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def onChat(data)
    @message = data
    Action.server.broadcast('chat', message: @message.content)
  end

  def self.all_messages(messages)
    ActionCable.server.broadcast('chat_channel', history: messages)
  end

end
