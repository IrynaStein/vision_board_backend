class AddColumnCoordinatesToQuotes < ActiveRecord::Migration[6.1]
  def change
    add_column :quotes, :coordinates, :string
  end
end
