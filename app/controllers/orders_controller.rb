class OrdersController < ApplicationController

  # action filter
  before_action :find_order, only: [:show, :order_report]

  def index
    @orders = current_user.orders
  end

  def create
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
        flash[:alert] = "Something went wrong"
      end
    end
  end

  def show
    respond_to do |format|
      format.html
      format.pdf do
          render pdf: "Order #{@order.id}",
          page_size: 'A4',
          template: "orders/show.html.erb",
          layout: "pdf.html",
          lowquality: true,
          zoom: 1,
          dpi: 75
      end
    end
  end

  private

  def find_order
    @order = Order.find(params[:id])
  end
end
