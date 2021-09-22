class CreateQuotes < ActiveRecord::Migration[6.1]
  def change
    create_table :quotes do |t|
      t.text :paragraph
      t.string :category
      t.timestamps
    end
  end
end
