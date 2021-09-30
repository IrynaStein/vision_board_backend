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
      board.save!
      render json: board, status: 200
    end
  end

  def update

    board = Board.find_by(id: params[:id])
    updated_board = board.full_update(board_params)

  if board_params[:images].nil? && board_params[:pictures].nil? 
    render json: updated_board, status: 200
  else 
    byebug
    unless board_params[:images].nil? then 
      board_params[:images].each do |image| updated_board.images.attach(image) 
      end
       else updated_board.update_attachement_coordinates(params[:pictures])
      end
      render json: updated_board, status: 200
  end 
  end

  private

  def board_params
    params.permit(
      :name, 
      :category, 
      :user_id, 
      :quote_id, 
      :id, 
      :posts => [:id, :paragraph, :category, :coordinates],
      quote: {}, 
      :stickers => [:id, :name, :category, :image_url, :coordinates], 
      :pictures=> [:id, :coordinates], 
      images: []
    )
  end
end

