class Api::V1::ConversationsController < ApplicationController
  # before_action :find_sender

def create
  @conversation = Conversation.new(conversation_params)

  if @conversation.save
    render json: @conversation, status: :created
  else
    render json: @conversation.errors, status: :unprocessible_entity
  end
end

def index
  @conversations = Conversation.all
  render json: @conversations
end

def update
  @conversation.update(conversations_params)
  if @conversation.save
    render json: @conversation, status: :accepted
  else
    render json: { errors: @conversation.errors.full_messages }, status: :unprocessible_entity
  end
end

private

def conversation_params
  params.require(:conversation).permit(:sender_id, :reciever_id);
end

end
