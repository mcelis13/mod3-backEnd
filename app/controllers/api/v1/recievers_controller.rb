class Api::V1::RecieversController < ApplicationController
  # before_action :find_sender

def create
  @reciever = Reciever.new(reciever_params)

  if @reciever.save
    render json: @reciever, status: :created
  else
    render json: @reciever.errors, status: :unprocessible_entity
  end
end

def index
  @recievers = Reciever.all
  render json: @recievers
end

def update
  @reciever.update(reciever_params)
  if @reciever.save
    render json: @reciever, status: :accepted
  else
    render json: { errors: @reciever.errors.full_messages }, status: :unprocessible_entity
  end
end

private

def reciever_params
  params.require(:reciever).permit(:name, :user_name);
end

# def find_sender
#   @sender = Sender.find(params[:id]);
# end

end
