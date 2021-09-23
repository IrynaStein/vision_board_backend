class AddInitColumnToQuotes < ActiveRecord::Migration[6.1]
  def change
    add_column :quotes, :init, :boolean
  end
end
