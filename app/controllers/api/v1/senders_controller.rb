class Api::V1::SendersController < ApplicationController

def show
  render json: @sender
end



def create
  # find or create by name here instead
  @sender = Sender.find_or_create_by({name: params[:name], user_name: params[:user_name]})
  render json: @sender
end

def index
  @senders = Sender.all
  render json: @senders
end

def update
  @sender.update(sender_params)
  if @sender.save
    render json: @sender, status: :accepted
  else
    render json: { errors: @sender.errors.full_messages }, status: :unprocessible_entity
  end
end

private

def sender_params
  params.require(:sender).permit(:name, :user_name);
end


end
