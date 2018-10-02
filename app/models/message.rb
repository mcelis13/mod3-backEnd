class Message < ApplicationRecord
  belongs_to :conversation
  has_many :senders, through: :conversations
  has_many :receivers, through: :conversations

end
