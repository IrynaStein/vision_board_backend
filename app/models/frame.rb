class Frame < ApplicationRecord
    has_many :board_frames
    has_many :boards, through: :board_frames
end
