class UsersController < ApplicationController

  def index
    users = User.all
    render json: users
  end

  def show
    user = User.find_by(id: params[:id])
    # byebug
    render json: user
  end

  def create
    # byebug
    user = User.create(user_params)

    if user.valid?
      payload= {user_id: user.id}
      token = JWT.encode(payload, secret, "HS256")
      # user_coordinates = Geocoder.search("Paris")
      render json: {token:token}
    else
      render json: {errors: user.errors.full_messages}, status:"try again 🐈"
    end
  end

  def profile
    render json: auth_current_user
  end

  def update
    # debugger
    newLatitude = Geocoder.search(params[:newAddress]).first.coordinates[1]
    newLongtitude = Geocoder.search(params[:newAddress]).first.coordinates[0]
    user = User.find(params[:user_id])
    user.update(name:params[:newName],phone_number:params[:newNumber],address:params[:newAddress],address_longtitude:newLatitude,address_latitude:newLongtitude)
    render json: user
  end


  def upload_image
    # debugger
    user = User.find(params[:id])
    user.image.attach(params[:image])
    render json:user
  end


  private
  def user_params
    params.permit(:name, :username, :password, :address, :phone_number)
  end


end
