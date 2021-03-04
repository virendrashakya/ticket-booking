class Admin::OrdersController < Admin::ApplicationController

  before_action :find_order, only: [:show, :order_report]

  def index
  end

  def show
  end

  private

  def find_order
    @order = Order.find(params[:id])
  end
end
