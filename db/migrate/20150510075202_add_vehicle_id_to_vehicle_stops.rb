class AddVehicleIdToVehicleStops < ActiveRecord::Migration
  def change
  	    add_column :vehicle_stops, :vehicle_id, :integer
  end
end
