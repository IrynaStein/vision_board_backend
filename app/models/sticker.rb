class Sticker < ApplicationRecord
    has_many :board_stickers
    has_many :boards, through: :board_stickers
end
