class Api::V1::MessagesController < ApplicationController
  # before_action :find_sender

def create
  @message = Message.new(message_params)

#   ActionCable.server.broadcast "chat", {
#   message: 'MessagesController'.render(
#     partial: 'message',
#     locals: { message: message}
#   ).squish
# }

  if @message.save
    ActionCable.server.broadcast 'chat_channel',
      content: message.content,
      username: message.conversation.sender.user_name
    render json: @message, status: :created
  else
    render json: @message.errors, status: :unprocessible_entity
  end
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

# def find_sender
#   @sender = Sender.find(params[:id]);
# end

end
