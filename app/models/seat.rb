class Seat < ApplicationRecord

    # scopes

    # association
    has_many :seet_bookings
    belongs_to :screen

    # nested attributes
    accepts_nested_attributes_for :seet_bookings

    # instance methods
    def booked?
        order_id.present?
    end
end
