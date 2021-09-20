class CreateBoards < ActiveRecord::Migration[6.1]
  def change
    create_table :boards do |t|
      t.string :name
      t.string :category
      t.belongs_to :user

      t.timestamps
    end
  end
end
