class ChatsController < ApplicationController
  def show
    render json: @message, status: :created
  end
end
