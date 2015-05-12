class AddSeqNumToVheicleStops < ActiveRecord::Migration
  def change
    add_column :vehicle_stops, :seq_num, :integer
  end
end
