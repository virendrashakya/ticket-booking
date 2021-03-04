class Order < ApplicationRecord

    # associations
    belongs_to :user
    belongs_to :show

    # validations
    validates :seat_ids, presence: true
    validate :avoid_past_bookings

    # instance_methods
    def seats
        Seat.find(seat_ids)
    end

    private

    def avoid_past_bookings
        unless Show.find(show_id).start_time > DateTime.now
            errors.add(:show_id, "has been already finished")
        end
    end
end
