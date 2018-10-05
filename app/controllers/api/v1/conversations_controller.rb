class Api::V1::ConversationsController < ApplicationController
  # before_action :find_sender

  def show
    @conversation = Conversation.find(params[:id])
    render json: @conversation
  end

  def create
    @conversation = Conversation.find_or_create_by(sender_id: params[:sender_id], receiver_id: params[:receiver_id]);
    render json: @conversation
  end

  def index
    @conversations = Conversation.all
    render json: @conversations
  end


  private

  def conversation_params
    params.require(:conversation).permit(:sender_id, :receiver_id);
  end

end
