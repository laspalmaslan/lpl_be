class CreateTournaments < ActiveRecord::Migration
  def change
    create_table :tournaments do |t|
      t.string :game
      t.text :description
      t.string :award

      t.timestamps
    end
  end
end
