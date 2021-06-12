class UsersController < ApplicationController

    def create
      user.new(user_params)
      if user.save
        render json: {
          status: 200,
          id: user.id,
          email: user.email
        }
      else
        render json: {
          status: 500,
        }
    end





    private
    def user_params
      params.require(:user).permit(:email, :password)
    end
end
