class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :name
      t.string :event_type
      t.integer :distance
      t.string :url
      t.text :notes
      t.string :event_at
      t.string :datetime

      t.timestamps
    end
  end
end
