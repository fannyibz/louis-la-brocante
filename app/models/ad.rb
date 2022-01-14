class Ad < ApplicationRecord
  
  has_one_attached :photo
  belongs_to :user

  validates :name, presence: true
  validates :price, presence: true
  validates :department, presence: true
end
