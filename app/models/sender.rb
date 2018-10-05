class Sender < ApplicationRecord
  has_many :conversations
  has_many :messages
  has_many :receivers, through: :conversations

  validates :user_name, uniqueness: true
end
