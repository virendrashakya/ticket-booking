class Admin::OrdersController < Admin::ApplicationController

  before_action :find_order, only: [:show]

  def index
    @all_orders = Order.all.includes(:show)
  end

  def show
  end

  private

  def find_order
    @order = Order.find(params[:id])
  end
end
