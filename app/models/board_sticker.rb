class BoardSticker < ApplicationRecord
    belongs_to :board
    belongs_to :sticker
end
