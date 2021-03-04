class Seat < ApplicationRecord

    CATEGORY = [
        {
            name: 'Economy',
            price: '50.00'
        },
        {
            name: 'Gold',
            price: '70.00'
        },
        {
            name: 'Platinum',
            price: '120.00'
        },
        {
            name: 'Recliner',
            price: '200.00'
        }
    ]

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
