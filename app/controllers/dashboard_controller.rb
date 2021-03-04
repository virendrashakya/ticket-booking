class DashboardController < ApplicationController

  def summary
    orders = current_user.orders.includes(:show)
    @past_orders = orders.past_orders
    @upcomming_orders = orders.upcomming_orders
    @running_orders = orders.running_orders
  end
  
end
