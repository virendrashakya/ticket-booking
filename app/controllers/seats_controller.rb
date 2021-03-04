class SeatsController < ApplicationController
    def book
        seats = Seat.where(id: params[:seat_id])
        total_price = seats.pluck(:price).sum
        # binding.pry
        o = Order.new(user_id: current_user.id, seat_ids: params[:seat_id], show_id: params[:show_id], price: total_price)
        ActiveRecord::Base.transaction do
            if o.save
                seats.update(order_id: o.id)
                flash[:success] = "Order placed successfully"
                redirect_to orders_path
            else
                flash[:alert] = o.errors.full_messages.join(", ")
                redirect_back fallback_location: root_path
            end
        end
    end
end
