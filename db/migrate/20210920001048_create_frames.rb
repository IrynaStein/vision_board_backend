class CreateFrames < ActiveRecord::Migration[6.1]
  def change
    create_table :frames do |t|
      t.string :size
      t.string :category
      t.string :coordinates
      
      t.timestamps
    end
  end
end
