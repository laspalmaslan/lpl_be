class CreateEnrollments < ActiveRecord::Migration
  def change
    create_table :enrollments do |t|
      t.string :first_name
      t.string :last_name
      t.integer :dni_n
      t.string :dni_l
      t.date :birt
      t.string :nick
      t.text :hardware

      t.timestamps
    end
  end
end
