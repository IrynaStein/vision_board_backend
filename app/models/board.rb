class Board < ApplicationRecord
    has_many :board_stickers
    has_many :board_posts
    has_many :board_frames
    has_many :stickers, through: :board_stickers
    has_many :posts, through: :board_posts
    has_many :frames, through: :board_frames
    belongs_to :quote

    validates :category, inclusion: {in: %w[water air earth fire]}

    # before_save :set_name

    # def set_name 
    #     board.name = 'Untitled-board-' + Date.today.to_s + rand(100..999).to_s if params[:name].nil?
    # end
end
