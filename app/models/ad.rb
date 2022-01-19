class Ad < ApplicationRecord
  
  has_one_attached :photo, dependent: :destroy
  has_many :messages, dependent: :destroy
  has_many :chatrooms, dependent: :destroy
  belongs_to :user

  validates :name, presence: true
  validates :price, presence: true
  validates :department, presence: true
end
