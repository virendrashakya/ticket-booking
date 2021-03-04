class OrdersController < ApplicationController

  # action filter
  before_action :find_order, only: [:show, :order_report]

  def index
    @orders = current_user.orders
  end

  def create
    
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
