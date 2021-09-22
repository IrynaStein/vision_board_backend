class BoardsController < ApplicationController
  def create
    user = User.find_by(id: session[:user_id])
    board = user.boards.new(board_params)
    byebug
    board.quote = Quote.where("category=?", params[:category]).first
    board.name = 'Untitled-board-' + Date.today.to_s + rand(100..999).to_s if params[:name].nil?
    board.save if board.valid?
    byebug
    render json: board, status: 200
  end

  private

  def board_params
    params.permit(:name, :category, :user_id)
  end
end
