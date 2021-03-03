class OrdersController < ApplicationController
  def create
    seats = Seat.where(id: params[:seat_id])
    total_price = seats.pluck(:price).sum
    # binding.pry
    o = Order.new(user_id: current_user.id, seat_ids: params[:seat_id], show_id: params[:show_id], price: total_price)
    ActiveRecord::Base.transaction do
      o.save!
      seats.update(order_id: o.id)
    end
  end
end
