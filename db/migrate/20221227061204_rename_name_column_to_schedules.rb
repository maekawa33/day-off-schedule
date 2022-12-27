class RenameNameColumnToSchedules < ActiveRecord::Migration[7.0]
  def change
    rename_column :schedules, :name, :schedule_title
  end
end
