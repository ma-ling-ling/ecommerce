class OrdersController < ApplicationController
  def my_orders
  	@orders = Order.where(user_id: current_user.id).order(created_at: :desc)
  end
end
