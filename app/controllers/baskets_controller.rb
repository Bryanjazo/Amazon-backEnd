class BasketsController < ApplicationController
  def create
    basket = Basket.new(basket_params)
    
    if basket.save
      binding.pry
      render json: basket
    end
  end

  def index
    baskets = Basket.all
    render json: baskets
  end

  private


  def basket_params
    params.require(:basket).permit(:user_id, product_ids: [])
  end


end
