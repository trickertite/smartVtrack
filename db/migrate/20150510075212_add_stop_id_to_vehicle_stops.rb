class AddStopIdToVehicleStops < ActiveRecord::Migration
  def change
  	    add_column :vehicle_stops, :stop_id, :integer
  end
end
