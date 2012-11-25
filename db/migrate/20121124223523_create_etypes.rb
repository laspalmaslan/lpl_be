class CreateEtypes < ActiveRecord::Migration
  def change
    create_table :etypes do |t|
      t.string :name
      t.decimal :price

      t.timestamps
    end
  end
end
