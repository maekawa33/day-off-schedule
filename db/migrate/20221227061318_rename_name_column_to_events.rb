class RenameNameColumnToEvents < ActiveRecord::Migration[7.0]
  def change
    rename_column :events, :name, :event_title
  end
end
