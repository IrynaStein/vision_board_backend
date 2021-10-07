class DelteColumnQuoteIdfromBoards < ActiveRecord::Migration[6.1]
  def change
    remove_column :boards, :quote_id
  end
end
