class SessionsController < ApplicationController

  def create
    @sender = Sender.find_by(user_name: params['user_name'])
    if @sender.save
      session[:sender_id] = @sender.id
    end
  end

end
