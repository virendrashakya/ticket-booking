class Order < ApplicationRecord

    # associations
    belongs_to :user
    belongs_to :show

    # validations
    validates :seat_ids, presence: true

    # instance_methods
    def seats
        Seat.find(seat_ids)
    end
end
