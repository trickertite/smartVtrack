class Vehicle < ActiveRecord::Base
	has_many :reservations
	has_many :query_users, through: :reservations

	has_many :vehicle_stops
	has_many :stops, through: :vehicle_stops

	has_many :share_users
end
