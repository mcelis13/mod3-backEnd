class Message < ApplicationRecord
  belongs_to :conversation
  has_many :users
  has_many :users, through: :conversations
end
