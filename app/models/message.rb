class Message < ApplicationRecord
  belongs_to :conversation
  has_many :senders, through: :conversations
  has_many :recievers, through: :conversations
end
