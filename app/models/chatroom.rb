class Chatroom < ApplicationRecord
  has_many :messages, dependent: :destroy
  belongs_to :user
  belongs_to :ad

  def ad_owner
    ad.user
  end
end
