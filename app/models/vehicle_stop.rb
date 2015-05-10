class VehicleStop < ActiveRecord::Base
	belongs_to :vehicle
	belongs_to :stop
end
