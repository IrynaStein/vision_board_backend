class CreateBoardStickers < ActiveRecord::Migration[6.1]
  def change
    create_table :board_stickers do |t|
      t.belongs_to :board 
      t.belongs_to :sticker

      t.timestamps
    end
  end
end
