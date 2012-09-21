class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.time :day_time
      t.string :description
      t.time :event_time

      t.timestamps
    end
  end
end
