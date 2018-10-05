class Api::V1::MessagesController < ApplicationController

def create
  @message = Message.create(message_params)
      ActionCable.server.broadcast 'chat_channel',
        content: message.content,
        username: message.conversation.sender.user_name
end

def index
  @messages = Message.all
  render json: @messages
end

def update
  @message.update(message_params)
  if @message.save
    render json: @message, status: :accepted
  else
    render json: { errors: @message.errors.full_messages }, status: :unprocessible_entity
  end
end

private

def message_params
  params.require(:message).permit(:content,:conversation_id);
end
end
