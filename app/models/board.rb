class Board < ApplicationRecord
    has_many :board_stickers
    has_many :board_posts
    has_many :board_frames
    has_many :stickers, through: :board_stickers
    has_many :posts, through: :board_posts
    has_many :frames, through: :board_frames
    belongs_to :quote, optional: true

    validates :category, inclusion: {in: %w[water air earth fire]}

    def set_name(board_params)
        self.name = 'Untitled-board-' + Date.today.to_s + rand(100..999).to_s if board_params[:name].nil?
    end

    #update this logic to reflect the quote coming in via params
    # def set_quote(board_params)
    #     self.quote = Quote.where("category=?", board_params[:category]).first
    # end
end
