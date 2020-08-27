class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :boat
  has_many :reviews
  before_validation :calculate_total_price

def calculate_total_price
  Self.total_price = (Self.end_date - Self.start_date)*Self.boat.price
end



end

