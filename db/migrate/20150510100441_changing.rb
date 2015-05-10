class Changing < ActiveRecord::Migration
  def change
  	remove_column :vehicle_stops, :prev
  	remove_column :vehicle_stops, :avg
  	add_column :vehicle_stops, :prev, :datetime
  	add_column :vehicle_stops, :avg, :datetime
  end
end
