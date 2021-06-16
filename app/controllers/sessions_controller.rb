class SessionsController < ApplicationController

  def create

    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      render json: {
        status: :created,
        logged_in: true,
        user: user
      }
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
