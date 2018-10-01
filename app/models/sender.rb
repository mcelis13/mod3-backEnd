class Sender < ApplicationRecord
  has_many :conversations
  has_many :messages
  has_many :messages, through: :conversations
end
