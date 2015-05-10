class Stop < ActiveRecord::Base
	has_many :vehicle_stops
	has_many :vehicles, through: :vehicle_stops
end
