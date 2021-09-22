class Post < ApplicationRecord
    has_many :board_posts
    has_many :boards, through: :board_posts
end
