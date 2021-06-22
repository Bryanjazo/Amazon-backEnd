require 'stripe'
class ChargesController < ApplicationController

  def create

    begin
    Stripe.api_key = "sk_test_51J3RPVGzEGg3Lz1M6bPeCcqjN4AUnWJKBafB1ebZ9QKZIuR2YAEssdSjuD0nd4jAkvgvRBbRWKBwLbOqO1mK6KHy00OW795KDM"

        customer.sources.create(source: params[:stripeToken])

        Stripe::Charge.create({
        :amount => params[:charge][:amount],
        :currency => "usd",
        :description => "Charge for test@example.com"
      })

        rescue Stripe::CardError => e
          render json: {message: 'could not process payment'}, status: :not_acceptable
  end
end

end
