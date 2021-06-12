class ReviewsController < ApplicationController


  def create
    @product = Product.find(params[:product_id])
    @review = Review.new(review_params)
    if @review.save
      render json: {
        body: @review.body,
        rating: @review.rating
      }

  end

  def index
    product = Product.find_by(id: params[])
  end

  def destroy
    @review = Review.find_by(params[:review_id])
    @review.destroy

  end


  private

  def review_params
    params.require(:review).permit(:body, :rating)
  end
end
