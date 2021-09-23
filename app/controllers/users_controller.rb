class UsersController < ApplicationController
  before_action :authorize, except: :create

  def show
    # byebug
    user = User.find_by(id: session[:user_id])
    water_quote = Quote.where('init=?', true).where('category=?', 'water').order('RANDOM()').first
    earth_quote = Quote.where('init=?', true).where('category=?', 'earth').order('RANDOM()').first
    render json: { user: user, quotes: [water_quote, earth_quote] }, status: 200
  end

  def create
    user = User.create!(user_params)
    session[:user_id] = user.id
    water_quote = Quote.where('init=?', true).where('category=?', 'water').order('RANDOM()').first
    earth_quote = Quote.where('init=?', true).where('category=?', 'earth').order('RANDOM()').first
    render json: { user: user, quotes: [water_quote, earth_quote] }, status: 200
  end

  private

  def user_params
    params.permit(:name, :username, :password, :password_confirmation, :email)
  end
end
