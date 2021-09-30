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

  def update_attachement_coordinates(params)
    byebug
    updated_images = params.map{|par| 
        updated = ActiveStorageAttachment.find_by(id: par[:id])
        updated.update(coordinates: par[:coordinates])
    }
   end

  def full_update(params)
    board = Board.find_by(id: params[:id])

    board.update(name: params[:name])

    unless params[:category].nil? then 
    board.update(category: params[:category])  
    end
#try return unless
   unless params[:stickers].nil? then
    #   updated_stickers = board.stickers = params[:stickers].map do |sticker|
        updated_stickers = params[:stickers].map do |sticker|
        sticker_to_update = Sticker.find_by(id: sticker[:id])
        sticker_to_update.update(coordinates: sticker[:coordinates])
        sticker_to_update
      end
      board.update(stickers: updated_stickers)
    else 
       board.stickers 
    end
# byebug
    unless params[:quote].nil? then 
        quote = Quote.find_by(id: params[:quote][:id])
        board.quote.update(params[:quote])
    end

    unless params[:posts].nil? then
      board.posts = params[:posts].map do |post|
        Post.create(paragraph: post[:paragraph], category: post[:category], coordinates: post[:coordinates])
      end
    end
    
    #helper to save image coordinates
    # unless params[:pictures].nil? then
    #     frames = params[:picture].each do |picture|
    #         Frame.create(id: picture[:id], coordinates: picture[:coordinates])
    #     end
        
    # end
  board
  end

 
  
end

# t.text "paragraph"
# t.string "category"
# t.datetime "created_at", precision: 6, null: false
# t.datetime "updated_at", precision: 6, null: false
# t.boolean "init"
# t.string "coordinates"
