class Api::V1::SendersController < ApplicationController
 # before_action :find_sender

def create
  @sender = Sender.new(sender_params)

  if @sender.save
    render json: @sender, status: :created
  else
    render json: @sender.errors, status: :unprocessible_entity
  end
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

# def find_sender
#   @sender = Sender.find(params[:id]);
# end

end
