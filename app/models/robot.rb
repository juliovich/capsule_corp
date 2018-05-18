class Robot < ApplicationRecord
  has_many :bookings
  belongs_to :user
  validates :name, presence: true, uniqueness: true
  validates :functions, presence: true
  validates :price, presence: true
end
