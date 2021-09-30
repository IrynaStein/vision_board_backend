class BoardSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers
  attributes :id, :name, :category, :stickers, :posts, :frames, :quote, :images

  has_many :stickers
  has_many :posts
  has_many :frames
  has_one :quote

  def images
    return unless object.images.attached?

    object.images.map do |image|
      image.blob.attributes
           .slice('filename', 'byte_size', 'id', 'coordinates')
           .merge(url: image_url(image), coordinates: create_coordinates(image))
    end
  end

  def image_url(image)
    # rails_blob_path(image, only_path: true)
    url_for(image)
  end

  def create_coordinates(image)
    byebug
    if image.coordinates.nil?
    image.coordinates="x:0, y:0"
    else image.coordinates
    end
  end
 
end
