class CreateBoardFrames < ActiveRecord::Migration[6.1]
  def change
    create_table :board_frames do |t|
      t.belongs_to :board
      t.belongs_to :frame 

      t.timestamps
    end
  end
end
