class AddFileNameUrlColumnsToFrames < ActiveRecord::Migration[6.1]
  def change
    add_column :frames, :filename, :string
    add_column :frames, :url, :string
  end
end
