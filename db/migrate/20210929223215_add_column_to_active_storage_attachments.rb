class AddColumnToActiveStorageAttachments < ActiveRecord::Migration[6.1]
  def change
    add_column :active_storage_attachments, :coordinates, :string
  end
end
