module ApplicationCable
  class Connection < ActionCable::Connection::Base
    # identified_by: current_user
    #
    # def connect
    #   self.sender = find_verified_sender
    # end
    #
    # private
    #
    # def find_verified_sender
    #   if verified_sender = Sender.find_by(id: cookies.sender_id)
    #   end
    # end
  end
end
