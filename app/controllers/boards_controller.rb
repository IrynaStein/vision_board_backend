class BoardsController < ApplicationController

  def create
    user = User.find_by(id: session[:user_id])
    stickers = Sticker.where("category=?", params[:category])
    board = user.boards.new(board_params)
    board.quote = Quote.where("category=?", params[:category]).first
    board.name = 'Untitled-board-' + Date.today.to_s + rand(100..999).to_s if params[:name].nil?
    board.save if board.valid?
    render json: {board: board, assets: {stickers: stickers}}, status: 200
  end

  private

  def board_params
    params.permit(:name, :category, :user_id)
  end
end
