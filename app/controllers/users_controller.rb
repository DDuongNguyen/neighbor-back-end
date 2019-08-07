class UsersController < ApplicationController

  def index
    users = User.all
    render json: users
  end

  def show
    user = User.find_by(id: params[:id])
    render json: user
  end

  def create
    user = User.create(user_params)

    if user.valid?
      payload= {user_id: user.id}
      token = JWT.encode(payload, 'meow', "HS256")
      render json: {token:token}
    else
      render json: {errors: user.errors.full_messages}, status:"try again 🐈"
    end
  end

  def profile
    render json: current_user
  end


  private
  def user_params
    params.permit(:name, :username, :password, :address, :phone_number)
  end


end
