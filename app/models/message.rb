class Message < ApplicationRecord
  belongs_to :chatroom
  belongs_to :user
  belongs_to :ad

  validates :content, presence: true
end
