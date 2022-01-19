class Ad < ApplicationRecord
  
  has_one_attached :photo
  has_many :messages
  has_many :chatrooms
  belongs_to :user

  validates :name, presence: true
  validates :price, presence: true
  validates :department, presence: true
end
