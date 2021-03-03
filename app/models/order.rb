class Order < ApplicationRecord

    # associations
    belongs_to :user
    belongs_to :show

    # instance_methods

    def seats
        Seat.find(seat_ids)
    end
end
