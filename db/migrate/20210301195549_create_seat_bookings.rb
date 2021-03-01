class CreateSeatBookings < ActiveRecord::Migration[6.1]
  def change
    create_table :seat_bookings do |t|
      t.integer :seat_id
      t.integer :order_id
      t.integer :show_id

      t.timestamps
    end
  end
end
