class Board < ApplicationRecord
  has_many :board_stickers
  has_many :board_posts
  has_many :board_frames
  has_many :stickers, through: :board_stickers
  has_many :posts, through: :board_posts
  has_many :frames, through: :board_frames
  belongs_to :quote, optional: true
  belongs_to :user

  has_many_attached :images, dependent: :destroy

  validates :category, inclusion: { in: %w[water air earth fire] }

  def set_name(board_params)
    self.name = 'Untitled-board-' + Date.today.to_s + rand(100..999).to_s if board_params[:name].nil?
  end

  # update this logic to reflect the quote coming in via params
  # def set_quote(board_params)
  #     self.quote = Quote.where("category=?", board_params[:category]).first
  # end

  # def update_attachement_coordinates(params)
  #   updated_images = params.map do |par|
  #     updated = ActiveStorageAttachment.find_by(id: par[:id])
  #     updated.update(coordinates: par[:coordinates])
  #   end
  # end

  def full_update(params)
    board = Board.find_by(id: params[:id])
    unless params[:name].nil?
    board.update(name: params[:name])
    end
    board.update(category: params[:category]) unless params[:category].nil?

    if params[:stickers].nil?
      board.stickers
    else
      # byebug
      updated_stickers = params[:stickers].map do |sticker|
        sticker_to_update = board.stickers.find_by(id: sticker[:id])
        sticker_to_update.update(coordinates: sticker[:coordinates])
        sticker_to_update
      end
      board.update(stickers: updated_stickers)
    end
    # byebug
    unless params[:quote].nil?
      quote = Quote.find_by(id: params[:quote][:id], init: false)
      # byebug
      if quote.nil?
        new_quote = Quote.create({
          paragraph: params[:quote][:paragraph],
          category: params[:quote][:category],
          author: params[:quote][:author],
          coordinates: params[:quote][:coordinates],
          init: false
        })
        board.update(quote: new_quote)
      else 
        board.quote.update(coordinates: params[:quote][:coordinates])
      end
      # byebug
      # board.quote
    end


    # if params[:quote].nil? || params[:quote] == ""
    #   # byebug
    #   board.quote.destroy
    # else 
    #   quote = Quote.find_by(id: params[:quote][:id], init: false)
    #   # byebug
    #   if quote.nil?
    #     new_quote = Quote.create({
    #       paragraph: params[:quote][:paragraph],
    #       category: params[:quote][:category],
    #       author: params[:quote][:author],
    #       coordinates: params[:quote][:coordinates],
    #       init: false
    #     })
    #     board.update(quote: new_quote)
    #   else 
    #     board.quote.update(coordinates: params[:quote][:coordinates])
    #   end
    # end
   








    if params[:posts].nil?
      board.posts
    else 
      updated_posts = params[:posts].map do |post|
        existing_post = board.posts.find_by(id: post[:id])
        if existing_post.nil?
          board.posts.create(paragraph: post[:paragraph], category: post[:category], coordinates: post[:coordinates])
        else 
          existing_post.update(coordinates: post[:coordinates])
          existing_post
        end
      end
      board.update(posts: updated_posts)
    end

    if params[:frames].nil?
      board.frames 
    else 
      updated_frames = params[:frames].map do |frame|
        existing_frame = board.frames.find_by(id: frame[:id])
        if existing_frame.nil?
          board.frames.create(filename: frame[:filename], url: frame[:url], coordinates: frame[:coordinates], old_id: frame[:id], byte_size: frame[:byte_size])
        else 
          existing_frame.update(coordinates: frame[:coordinates])
          existing_frame
        end
      end
      board.update(frames: updated_frames)
    end
    board
  end

end

