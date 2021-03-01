class SeatBooking < ApplicationRecord

    # association
    belongs_to :seat
    belongs_to :order
    belongs_to :show
end
