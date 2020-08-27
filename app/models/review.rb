class Review < ApplicationRecord
  belongs_to :user
  belongs_to :reservation
  has_one :boat, through: :reservation
end
