class CreateVehicles < ActiveRecord::Migration
  def change
    create_table :vehicles do |t|
      t.string :name
      t.string :plate_number
      t.string :type

      t.timestamps null: false
    end
  end
end
