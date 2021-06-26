class SessionsController < ApplicationController

  def create
    @user = User.find_by(email: params[:email])

    if @user && @user.authenticate(params[:password])
      # encode token comes from ApplicationController
      token = encode_token({ user_id: @user.id })
      render json: { user: @user, jwt: token }, status: :accepted
    else
      render json: {message: "No users found"}
    end
  end

def show
  user = User.find_by(id: params[:id])
  if user
  render json: {
    user: user
  }
else
  render json:{message: "no user"}
end
end


end
