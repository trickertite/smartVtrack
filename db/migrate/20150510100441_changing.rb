class Changing < ActiveRecord::Migration
  def change
  	change_column :vehicle_stops, :prev, :datetime
  	change_column :vehicle_stops, :avg, :datetime
  	#change_column :reservations, :is_alert, :integer
  end
end
