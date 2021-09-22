class BoardSerializer < ActiveModel::Serializer
  attributes :id, :name, :category, :stickers, :posts, :frames, :quote

  has_many :stickers 
  has_many :posts
  has_many :frames
  has_one :quote

end