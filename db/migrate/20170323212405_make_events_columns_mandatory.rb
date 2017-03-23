class MakeEventsColumnsMandatory < ActiveRecord::Migration[5.0]
  def change
    change_column_null :events, :name, false
    change_column_null :events, :event_type, false
    change_column_null :events, :distance, false
    change_column_null :events, :event_at, false
  end
end
