class SeatsController < ApplicationController
    def book
        seats = Seat.where(id: params[:seat_id])
        total_price = seats.pluck(:price).sum
        order = current_user.orders.new(seat_ids: params[:seat_id], show_id: params[:show_id], price: total_price)
        ActiveRecord::Base.transaction do
            if order.save
                seats.update(order_id: order.id, show_id: params[:show_id])
                flash[:success] = "Order placed successfully"
                redirect_to orders_path
            else
                flash[:error] = order.errors.full_messages.join(", ")
                redirect_back fallback_location: root_path
            end
        end
    rescue StandardError => e
        flash[:error] = e.message
        redirect_back fallback_location: root_path
    end
end
