class Sender < ApplicationRecord
  has_many :conversations
  has_many :messages
  has_many :messages, through: :conversations
  has_many :recievers, through: :conversations
end
