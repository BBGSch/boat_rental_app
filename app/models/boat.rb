class Boat < ApplicationRecord
  belongs_to :user
  has_one_attached :photo

  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?

  def available?(start_date, end_date)

    check_range = (start_date..end_date)

    self.reservations.each do |reservation|
      if reservation.status?
        res_range = (reservation.start_date..reservation.end_date)
        if res_range.include?(start_date) || res_range.include?(end_date) || check_range.include?(res_range)
          return false
        end
        return true
      end
    end
  end


end
