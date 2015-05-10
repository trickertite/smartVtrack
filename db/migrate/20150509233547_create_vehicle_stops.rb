class CreateVehicleStops < ActiveRecord::Migration
  def change
    create_table :vehicle_stops do |t|
      t.integer :prev
      t.integer :avg

      t.timestamps null: false
    end
  end
end
