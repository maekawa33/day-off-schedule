class AddThreeMainEventsToEvents < ActiveRecord::Migration[7.0]
  def change
    add_column :events, :three_main_events, :boolean
  end
end
