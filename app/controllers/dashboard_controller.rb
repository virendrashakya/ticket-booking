class DashboardController < ApplicationController
  def summary
    orders = current_user.orders
       @past_orders = orders.joins(:show).distinct(:show_id).where("end_time < ?",DateTime.now)
       @upcomming_orders = orders.joins(:show).distinct(:show_id).where("end_time > ?",DateTime.now)
       @running_orders = orders.joins(:show).distinct(:show_id).where("start_time < ? AND end_time > ?", DateTime.now, DateTime.now)
  end
end
