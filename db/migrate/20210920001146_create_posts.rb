class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.text :paragraph
      t.string :category
      t.string :coordinates 

      t.timestamps
    end
  end
end
