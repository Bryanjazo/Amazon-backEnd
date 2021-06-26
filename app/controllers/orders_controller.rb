class OrdersController < ApplicationController
  def create
    order = Order.new(orders_params)

    if order.save
      render json: order
  end
end

  def index
      user = User.find_by(id: params[:user_id])



      orders = user.orders

      render json: orders.to_json(include: [:products])

  end

  private

  def orders_params
    params.require(:order).permit(:user_id, product_ids: [])
  end
end
