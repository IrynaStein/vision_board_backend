class StickerSerializer < ActiveModel::Serializer
  attributes :id, :name, :category, :image_url
end
