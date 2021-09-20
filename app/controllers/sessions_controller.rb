class SessionsController < ApplicationController
  before_action :authorize, only: :destroy

  def create
    # byebug
    user = User.find_by(username: params[:username])
    if user&.authenticate(params[:password])
      session[:user_id] = user.id
      render json: user, status: 200
    else
      render json: { errors: ['Invalid username or password'] }, status: :unauthorized
    end
  end

  def destroy
    # byebug
    session.delete(:user_id)
    render json: { message: 'You have been successfully logged out!' }, status: 200
  end
end
