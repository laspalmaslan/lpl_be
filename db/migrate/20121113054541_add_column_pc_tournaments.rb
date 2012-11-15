class AddColumnPcTournaments < ActiveRecord::Migration
  def change
    add_column :tournaments, :pc, :boolean
  end
end
