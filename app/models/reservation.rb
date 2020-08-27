class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :boat
  has_many :reviews, dependent: :destroy
  before_validation :calculate_total_price

  def calculate_total_price
    self.total_price = (end_date - start_date).to_i*boat.price.to_i



    # puts (Self.end_date - Self.start_date)
    # puts (Self.end_date - Self.start_date).to_i
    # puts Self.boat.price.to_i
  

  end



end

