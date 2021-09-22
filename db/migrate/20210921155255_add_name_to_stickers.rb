class AddNameToStickers < ActiveRecord::Migration[6.1]
  def change
    add_column :stickers, :name, :string
  end
end
