class AddAssociationColumnToTheQuotes < ActiveRecord::Migration[6.1]
  def change
    add_reference :quotes, :board, foreign_key: true
  end
end
