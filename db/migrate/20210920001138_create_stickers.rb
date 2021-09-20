class CreateStickers < ActiveRecord::Migration[6.1]
  def change
    create_table :stickers do |t|
      t.string :image_url
      t.string :category
      t.string :coordinates
      
      t.timestamps
    end
  end
end
