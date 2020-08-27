class Review < ApplicationRecord
  belongs_to :user
  belongs_to :reservation
  # belongs_to :boat, through: :reservations
end
