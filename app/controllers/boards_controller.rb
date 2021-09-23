class BoardsController < ApplicationController

  def create
    user = User.find_by(id: session[:user_id])
    stickers = Sticker.where("category=?", board_params[:category])
    board = user.boards.build(board_params)
    board.set_name(board_params)
    # board.set_quote(board_params)
    board.save!
    # byebug
    render json: {board: board, assets: {stickers: stickers}}, status: 200
  end

  private

  def board_params
    params.permit(:name, :category, :user_id, :quote_id)
  end
end
