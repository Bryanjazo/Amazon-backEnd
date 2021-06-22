class UsersController < ApplicationController


    def index

      user = User.all
      render json: user
    end

    def show
        user = User.find_by(id: params[:id])
        if user
            render json: user
        else
            render json: {message: "User not found."}
        end
    end

    def create
    @user = User.new(email: params[:email], password: params[:password])
    if @user.save
    session[:user_id] = @user.id

      render json: {
        status: 200,
        id: @user.id,
        email: @user.email,
        password: @user.password

      }
    else
      render json: {
        status: 500,
        errors: @user.errors.full_messages
      }
    end
  end

def update

  user = User.find_by(id: params[:id].to_i)
  user.update(email: params[:email], adress: params[:adress], name: params[:name])
  if user.save
    render json: user

  else
    render json:{message: "Can not update"}
  end
end


    private

    def user_params
        params.require(:user).permit(:user_id, :username,:name, :email, :password)
    end

end
