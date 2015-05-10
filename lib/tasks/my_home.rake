namespace :data_filling do
  desc "TODO"
  task fill_vehicle_stops: :environment do
  	
  	vehicle1 = Vehicle.create({name: "1", plate_number: "Route-1"})

  	route1 = [
  		{name: "Check post #6", lat: 24.93421,lon: 67.17703,prev: "2015-05-07 6:30"},
		{name: "Askri 5",lat: 24.94065,lon: 67.17915,prev: "2015-05-07 6:35"},
		{name: "Phase 1",lat: 24.95255,lon: 67.18648,prev: "2015-05-07 6:45"},
		{name: "Falcon",lat: 24.95668,lon: 67.21660,prev: "2015-05-07 6:50"},
		{name: "CMH",lat: 24.94886,lon: 67.21431,prev: "2015-05-07 7:00"},
		{name: "X 20",lat: 24.93136,lon: 67.20398,prev: "2015-05-07 7:05"},
		{name: "Cantt Bazar",lat: 24.92620,lon: 67.20307,prev: "2015-05-07 7:10"},
		{name: "Check post #2",lat: 24.91315,lon: 67.19851,prev: "2015-05-07 7:15"},
		{name: "Malir Halt",lat: 24.88457,lon: 67.17523,prev: "2015-05-07 7:18"},
		{name: "Malir 15",lat: 24.87893,lon: 67.18806,prev: "2015-05-07 7:22"},
		{name: "Anwar Baloch",lat: 24.86957,lon: 67.20034,prev: "2015-05-07 7:25"},
		{name: "Quaidabad",lat: 24.85533,lon: 67.2116,prev: "2015-05-07 7:30"},
		{name: "Gul Ahmed",lat: 24.85477,lon: 67.2273,prev: "2015-05-07 7:35"},
		{name: "Fast",lat: 24.85747,lon: 67.26428,prev: "2015-05-07 7:45"}
	]


	route1.each do |stop|
		@stop = Stop.create({name: stop['name'], lat: stop['lat'], long: stop['lon']})
		@stop.save
		@vs = @stop.vehicle_stops.create(prev: stop['prev'], vehicle_id: vehicle1.id)
		@vs.save
	end
  end

end
