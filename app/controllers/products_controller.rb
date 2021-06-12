class ProductsController < ApplicationController

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      render json: {
        product: @product.product,
        description: @product.description,
        price: @product.price
      }
    else
      render json: {message: "No products found"}
    end
  end

  def index
    @products = Product.all
    render json: @products
  end


  def show
    @reviews = @product.reviews.prdeer(created_at: :desc)

    @product = Product.find(params[:id])
  end

  private

  def product_params
    params.permit(:product).require(:title, :product_image, :name, :description, :price)
  end

end
