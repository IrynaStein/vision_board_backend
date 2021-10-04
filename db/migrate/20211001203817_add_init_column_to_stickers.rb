class AddInitColumnToStickers < ActiveRecord::Migration[6.1]
  def change
    add_column :stickers, :init, :boolean
  end
end
