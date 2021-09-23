class SessionsController < ApplicationController
  before_action :authorize, only: :destroy

  def create
    # byebug
    user = User.find_by(username: params[:username])
    if user&.authenticate(params[:password])
      session[:user_id] = user.id
    #   byebug
    water_quote = Quote.where('init=?', true).where('category=?', "water").order('RANDOM()').first
    earth_quote = Quote.where('init=?', true).where('category=?', "earth").order('RANDOM()').first
      render json: {user: user, quotes: [water_quote, earth_quote]}, status: 200
    else
        # byebug
      render json: { errors: ['Invalid username or password'] }, status: :unauthorized
    end
  end

  def destroy
    # byebug
    session.destroy
    render json: { message: 'You have been successfully logged out!' }, status: 200
  end
end
