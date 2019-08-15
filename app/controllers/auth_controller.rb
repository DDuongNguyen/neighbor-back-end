class AuthController < ApplicationController
  def create
      user = User.find_by(username: user_params[:username])
      if user && user.authenticate(user_params[:password])
          render json: {user: user, token: encoded_token(user)}
      else
          render json: {errors: 'random errors 🐈'}
      end
  end

  def persist
      if token
          render json: auth_current_user
      end
  end

  private

  def user_params
      params.permit(:username, :password)
  end
end
