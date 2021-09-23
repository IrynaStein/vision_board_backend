class UsersController < ApplicationController
  before_action :authorize, except: :create

  def show
    # byebug
    user = User.find_by(id: session[:user_id])
    quotes = %w[water earth].map{|q| Quote.where('init=?', true).where('category=?', q).order('RANDOM()').first}
    render json: { user: UserSerializer.new(user), quotes: quotes.map{|quo| QuoteSerializer.new(quo)}}, status: 200


  end

  def create
    user = User.create!(user_params)
    session[:user_id] = user.id
    quotes = %w[water earth].map{|q| Quote.where('init=?', true).where('category=?', q).order('RANDOM()').first}
    render json: { user: UserSerializer.new(user), quotes: quotes.map{|quo| QuoteSerializer.new(quo)}}, status: 200
  end

  private

  def user_params
    params.permit(:name, :username, :password, :password_confirmation, :email)
  end
end
