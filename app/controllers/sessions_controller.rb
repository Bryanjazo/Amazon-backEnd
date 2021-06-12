class SessionsController < ApplicationController

  def create_table
    user = User.find_by(email: params[:email])
    if user && user.authenthicate(params[:password])
      session[:user_id] = user.id
      render json: {
        status: 200,
        id: user.id ,
        email: user.email
      }
    else
      render json: {message: "No users found"}
  end
end
