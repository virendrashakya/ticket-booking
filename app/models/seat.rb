class Seat < ApplicationRecord

    # association
    has_many :seet_bookings
    belongs_to :screen
end
