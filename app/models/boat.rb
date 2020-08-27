class Boat < ApplicationRecord
  belongs_to :user
  has_one_attached :photo
  has_many :reservations
  has_many :reviews, through: :reservations
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
end
