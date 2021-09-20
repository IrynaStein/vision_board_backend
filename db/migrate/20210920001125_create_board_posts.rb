class CreateBoardPosts < ActiveRecord::Migration[6.1]
  def change
    create_table :board_posts do |t|
      t.belongs_to :board 
      t.belongs_to :post

      t.timestamps
    end
  end
end
