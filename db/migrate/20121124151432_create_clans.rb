class CreateClans < ActiveRecord::Migration
  def change
    create_table :clans do |t|
      t.string :name

      t.timestamps
    end
  end
end
