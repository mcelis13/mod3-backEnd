class Api::V1::ReceiversController < ApplicationController

def create
  @receiver = Receiver.new(receiver_params)

  if @receiver.save
    render json: @receiver, status: :created
  else
    render json: @receiver.errors, status: :unprocessible_entity
  end
end

def index
  @receivers = Receiver.all
  render json: @receivers
end

def update
  @receiver.update(receiver_params)
  if @receiver.save
    render json: @receiver, status: :accepted
  else
    render json: { errors: @receiver.errors.full_messages }, status: :unprocessible_entity
  end
end

private

def receiver_params
  params.require(:receiver).permit(:name, :user_name);
end

end
