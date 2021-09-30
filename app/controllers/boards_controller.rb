class BoardsController < ApplicationController
  def create
    user = User.find_by(id: session[:user_id])
    if user.boards.where('category=?', board_params[:category]).exists?
       render json: { errors: 'Seems like you already have a board in this category. Please chose a different category or delete existing board' }, status: :unprocessable_entity 
    else
      stickers = Sticker.where('category=?', board_params[:category])
      board = user.boards.build(board_params)
      board.set_name(board_params)
      board.stickers = stickers
      # board.set_quote(board_params)
      # if board.images.nil?
      #   board.images = []
      # end
      # debugger
      board.save!
      render json: board, status: 200
    end
  end

  def update
    # byebug
    board = Board.find_by(id: params[:id])
    byebug
    # board.update(board_params)
    board.full_update(board_params)
    byebug
    render json: board, status: 200
  end

  private

  def board_params
    params.permit(:name, :category, :user_id, :quote_id, :id, :quote, :stickers, :pictures, :posts, images: [])
  end
end

