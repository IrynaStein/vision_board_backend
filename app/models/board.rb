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

  def full_update(params)
    board = Board.find_by(id: params[:id])
    byebug
    board.update(
      board.name = params[:name],
      board.category = params[:category],
      board.stickers = params[:stickers].map do |post|
        Sticker.update(paragraph: post.paragraph, category: post.category, coordinates: post.coordinates)
      end,
      board.quote = params.quote,
      if board.posts.length > 0
        board.posts = params.posts.map do |post|
          Post.create(paragraph: post.paragraph, category: post.category, coordinates: post.coordinates)
        end
      end
    )
  end
end

# t.text "paragraph"
# t.string "category"
# t.datetime "created_at", precision: 6, null: false
# t.datetime "updated_at", precision: 6, null: false
# t.boolean "init"
# t.string "coordinates"
