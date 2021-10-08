class SessionsController < ApplicationController
  before_action :authorize, only: :destroy

  def create
    # byebug
    user = User.find_by(username: params[:username])
    if user&.authenticate(params[:password])
      session[:user_id] = user.id
    #   byebug
    quotes = %w[water earth air fire].map{|q| Quote.where('init=?', true).where('category=?', q).order('RANDOM()').first}
    render json: { 
      user: UserSerializer.new(user), 
      quotes: quotes.map{|quo| QuoteSerializer.new(quo)}
      }, 
      status: 200
    else
      render json: { errors: ['Invalid username or password'] }, status: :unauthorized
    end
  end

  def destroy
    # byebug
    session.destroy
    render json: { message: 'You have been successfully logged out!' }, status: 200
  end
end
