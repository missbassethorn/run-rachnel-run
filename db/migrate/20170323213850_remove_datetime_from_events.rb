class RemoveDatetimeFromEvents < ActiveRecord::Migration[5.0]
  def change
    remove_column :events, :datetime, :string
    change_column :events, :event_at, :datetime
  end
end
