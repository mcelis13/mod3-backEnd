class Sender < ApplicationRecord
  has_many :conversations
  has_many :messages
  has_many :messages, through: :conversations
  has_many :receivers, through: :conversations
end
