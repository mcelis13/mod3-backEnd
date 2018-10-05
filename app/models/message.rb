class Message < ApplicationRecord
  belongs_to :conversation
  belongs_to :sender
  has_many :receivers, through: :conversations
end
