class AddTypeAndPaidAtToEnrollments < ActiveRecord::Migration
  def change
    add_column :enrollments, :etype_id, :integer
    add_column :enrollments, :paid_at, :date
  end
end
