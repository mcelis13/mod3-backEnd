class Reciever < ApplicationRecord
  has_many :conversations
  has_many :messages
  has_many :messages, through: :conversations
end
