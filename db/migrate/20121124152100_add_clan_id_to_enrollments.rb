class AddClanIdToEnrollments < ActiveRecord::Migration
  def change
    add_column :enrollments, :clan_id, :integer
  end
end
