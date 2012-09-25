class ChangeDayDate < ActiveRecord::Migration
  def change
    change_table :events do |t|
      t.remove :day_time
      t.integer :day_id
    end
  end
end
