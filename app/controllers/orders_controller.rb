class OrdersController < ApplicationController
  def create

    order = Order.new(basket: params[:basket], user_id: params[:user_id])
    binding.pry
    if order.save
      render json: order
  end
end

  def index
      user = User.find_by(id: params[:user_id])

      orders = user.orders
      binding.pry
      render json: orders.to_json(include: [:user])

  end

  private

  def orders_params
    params.permit(:order).require(:basket)
  end
end
