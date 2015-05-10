class AddVehicleIdToReservations < ActiveRecord::Migration
  def change
    add_column :reservations, :vehicle_id, :integer
  end
end
