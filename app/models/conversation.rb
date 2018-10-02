class Conversation < ApplicationRecord
  has_many :messages
  belongs_to :sender
  belongs_to :receiver
end
