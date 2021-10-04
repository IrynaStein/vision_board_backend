class AddColumnOldIdAndByteSizeToFrames < ActiveRecord::Migration[6.1]
  def change
    add_column :frames, :old_id, :integer
    add_column :frames, :byte_size, :integer
  end
end
