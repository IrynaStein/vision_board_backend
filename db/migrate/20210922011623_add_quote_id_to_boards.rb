class AddQuoteIdToBoards < ActiveRecord::Migration[6.1]
  def change
    add_reference :boards, :quote, foreign_key: true
  end
end
