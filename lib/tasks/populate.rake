namespace :populate do
  desc "TODO"
  task data1: :environment do
  	
  	vehicle1 = Vehicle.create({name: "Route-1", plate_number: "1"})

  	route1 = [
  		{seq_num: 1,name: "Check post #6",lat: 24.93421,lon: 67.17703,prev: "2015-05-07 6:30"},
		{seq_num: 2,name: "Askri 5",lat: 24.94065,lon: 67.17915,prev: "2015-05-07 6:35"},
		{seq_num: 3,name: "Phase 1",lat: 24.95255,lon: 67.18648,prev: "2015-05-07 6:45"},
		{seq_num: 4,name: "Falcon",lat: 24.95668,lon: 67.21660,prev: "2015-05-07 6:50"},
		{seq_num: 5,name: "CMH",lat: 24.94886,lon: 67.21431,prev: "2015-05-07 7:00"},
		{seq_num: 6,name: "X 20",lat: 24.93136,lon: 67.20398,prev: "2015-05-07 7:05"},
		{seq_num: 7,name: "Cantt Bazar",lat: 24.92620,lon: 67.20307,prev: "2015-05-07 7:10"},
		{seq_num: 8,name: "Check post #2",lat: 24.91315,lon: 67.19851,prev: "2015-05-07 7:15"},
		{seq_num: 9,name: "Malir Halt",lat: 24.88457,lon: 67.17523,prev: "2015-05-07 7:18"},
		{seq_num: 10,name: "Malir 15",lat: 24.87893,lon: 67.18806,prev: "2015-05-07 7:22"},
		{seq_num: 11,name: "Anwar Baloch",lat: 24.86957,lon: 67.20034,prev: "2015-05-07 7:25"},
		{seq_num: 12,name: "Quaidabad",lat: 24.85533,lon: 67.2116,prev: "2015-05-07 7:30"},
		{seq_num: 13,name: "Gul Ahmed",lat: 24.85477,lon: 67.2273,prev: "2015-05-07 7:35"},
		{seq_num: 14,name: "Fast",lat: 24.85747,lon: 67.26428,prev: "2015-05-07 7:45"}
	]


	route1.each do |stop|
		@stop = Stop.create({name: stop[:name], lat: stop[:lat], long: stop[:lon]})
		@vs = @stop.vehicle_stops.create(prev: stop[:prev], vehicle_id: vehicle1.id, seq_num: stop[:seq_num])
	end
  end

  task data2: :environment do
  	vehicle12 = Vehicle.create({name: "Route-12", plate_number: "12"})
  
  	route12 = [
  		{seq_num: 1,name: "Gull Plaza", lat: 24.86441,lon: 67.02369,prev: "2015-05-07 6:20"},
		{seq_num: 2,name: "7 Day", lat: 24.8668,lon: 67.02779,prev: "2015-05-07 6:22"},
		{seq_num: 3,name: "Numaish Chowrangi", lat: 24.87289,lon: 67.03581,prev: "2015-05-07 6:25"},
		{seq_num: 4,name: "Noorani", lat: 24.86738,lon: 67.05231,prev: "2015-05-07 6:30"},
		{seq_num: 5,name: "Khalid Bin Walid (Medicare )", lat: 24.8811,lon: 67.06228,prev: "2015-05-07 6:35"},
		{seq_num: 6,name: "Sharfabad", lat: 24.88755,lon: 67.06709,prev: "2015-05-07 6:40"},
		{seq_num: 7,name: "Agha Khan Hospital", lat: 24.89050,lon: 67.07297,prev: "2015-05-07 6:50"},
		{seq_num: 8,name: "Dalmian(Bahria Uni)", lat: 24.89413,lon: 67.08799,prev: "2015-05-07 6:55"},
		{seq_num: 9,name: "Drig Road", lat: 24.88708,lon: 67.12601,prev: "2015-05-07 7:00"},
		{seq_num: 10,name: "Colony Gate", lat: 24.88699,lon: 67.14964,prev: "2015-05-07 7:05"},
		{seq_num: 11,name: "Star Gate", lat: 24.887,lon: 67.15404,prev: "2015-05-07 7:08"},
		{seq_num: 12,name: "Kalandria", lat: 24.95968,lon: 67.04978,prev: "2015-05-07 7:15"},
		{seq_num: 13,name: "Malir Halt",lat: 24.88457,lon: 67.17523,prev: "2015-05-07 7:18"},
		{seq_num: 14,name: "Malir 15",lat: 24.87893,lon: 67.18806,prev: "2015-05-07 7:22"},
		{seq_num: 15,"Anwar Baloch",lat: 24.86957,lon: 67.20034,prev: "2015-05-07 7:25"},
		{seq_num: 16,name: "Quaidabad",lat: 24.85533,lon: 67.2116,prev: "2015-05-07 7:30"},
		{seq_num: 17,name: "Gul Ahmed",lat: 24.85477,lon: 67.2273,prev: "2015-05-07 7:35"},
		{seq_num: 18,name: "Fast",lat: 24.85747,lon: 67.26428,prev: "2015-05-07 7:45"}
  	]

  	route12.each do |stop|
		@stop = Stop.create({name: stop[:name], lat: stop[:lat], long: stop[:lon]})
		@vs = @stop.vehicle_stops.create(prev: stop[:prev], vehicle_id: vehicle12.id, seq_num: stop[:seq_num])
	end
  end

  task data3: :environment do
  	vehicle17 = Vehicle.create({name: "Route-17", plate_number: "17"})
  
  	route17 = [
  		{seq_num: 1,name: "Teen Hatti", lat: 24.89324,lon: 67.04382,prev: "2015-05-07 6:30"},
		{seq_num: 2,name: "Dak khana", lat: 24.90914,lon: 67.04978,prev: "2015-05-07 6:35"},
		{seq_num: 3,name: "Karimabad", lat: 24.91832,lon: 67.05372,prev: "2015-05-07 6:40"},
		{seq_num: 4,name: "Ayesha Manzil", lat: 24.92775,lon: 67.06426,prev: "2015-05-07 6:50"},
		{seq_num: 5,name: "Naseerabad", lat: 24.93257,lon: 24.93257,prev: "2015-05-07 6:55"},
		{seq_num: 6,name: "Ancholi", lat: 24.94067,lon: 67.08063,prev: "2015-05-07 6:58"},
		{seq_num: 7,name: "Fazal Mill", lat: 24.93287,lon: 67.08561,prev: "2015-05-07 7:00"},
		{seq_num: 8,name: "Gulshan Chowrangi", lat: 24.92439,lon: 67.0915,prev: "2015-05-07 7:02"},
		{seq_num: 9,name: "Nipa", lat: 24.91769,lon: 67.09755,prev: "2015-05-07 7:03"},
		{seq_num: 10,name: "Johar Mor", lat: 24.90374,lon: 67.11428,prev: "2015-05-07 7:05"},
		{seq_num: 11,name: "Drig Road", lat: 24.88708,lon: 67.12601,prev: "2015-05-07 7:08"},
		{seq_num: 12,name: "Colony Gate", lat: 24.88699,lon: 67.14964,prev: "2015-05-07 7:10"},
		{seq_num: 13,name: "Star Gate", lat: 24.887,lon: 67.15404,prev: "2015-05-07 7:12"},
		{seq_num: 14,name: "Kalandria", lat: 24.95968,lon: 67.04978,prev: "2015-05-07 7:15"},
		{seq_num: 15,name: "Malir Halt",lat: 24.88457,lon: 67.17523,prev: "2015-05-07 7:18"},
		{seq_num: 16,name: "Malir 15",lat: 24.87893,lon: 67.18806,prev: "2015-05-07 7:22"},
		{seq_num: 17,name: "Anwar Baloch",lat: 24.86957,lon: 67.20034,prev: "2015-05-07 7:25"},
		{seq_num: 18,name: "Quaidabad",lat: 24.85533,lon: 67.2116,prev: "2015-05-07 7:30"},
		{seq_num: 19,name: "Gul Ahmed",lat: 24.85477,lon: 67.2273,prev: "2015-05-07 7:35"},
		{seq_num: 20,name: "Fast",lat: 24.85747,lon: 67.26428,prev: "2015-05-07 7:45"}
  	]

  	route17.each do |stop|
		@stop = Stop.create({name: stop[:name], lat: stop[:lat], long: stop[:lon]})
		@vs = @stop.vehicle_stops.create(prev: stop[:prev], vehicle_id: vehicle17.id, seq_num: stop[:seq_num])
	end
  end

  task data4: :environment do
  	vehicle18 = Vehicle.create({name: "Route-18", plate_number: "18"})
  
  	route18 = [
  		{seq_num: 1,name: "Nazimabad 7#", lat: 24.91857,lon: 67.03105,prev: "2015-05-07 6:15"},
		{seq_num: 2,name: "Abbasi Hospital", lat: 24.92104,lon: 67.02934,prev: "2015-05-07 6:16"},
		{seq_num: 3,name: "khilafat chowk", lat: 24.92233,lon: 67.02439,prev: "2015-05-07 6:22"},
		{seq_num: 4,name: "Abdullah College", lat: 24.93026,lon: 67.02375,prev: "2015-05-07 6:25"},
		{seq_num: 5,name: "Orangi Town", lat: 24.93911,lon: 66.98342,prev: "2015-05-07 6:30"},
		{seq_num: 6,name: "Moosa Colony", lat: 24.92041,lon: 67.04720,prev: "2015-05-07 6:40"},
		{seq_num: 7,name: "Usman Memorial", lat: 24.91407,lon:67.05670,prev: "2015-05-07 6:50"},
		{seq_num: 8,name: "DC Office", lat: 24.89789,lon:67.07701,prev: "2015-05-07 6:52"},
		{seq_num: 9,name: "Dalmian(Bahria Uni)", lat: 24.89413,lon: 67.08799,prev: "2015-05-07 6:55"},
		{seq_num: 10,name: "Drig Road", lat: 24.88708,lon: 67.12601,prev: "2015-05-07 7:00"},
		{seq_num: 11,name: "Colony Gate", lat: 24.88699,lon: 67.14964,prev: "2015-05-07 7:05"},
		{seq_num: 12,name: "Star Gate", lat: 24.887,lon: 67.15404,prev: "2015-05-07 7:08"},
		{seq_num: 13,name: "Kalandria", lat: 24.95968,lon: 67.04978,prev: "2015-05-07 7:15"},
		{seq_num: 14,name: "Malir Halt",lat: 24.88457,lon: 67.17523,prev: "2015-05-07 7:18"},
		{seq_num: 15,name: "Malir 15",lat: 24.87893,lon: 67.18806,prev: "2015-05-07 7:22"},
		{seq_num: 16,name: "Anwar Baloch",lat: 24.86957,lon: 67.20034,prev: "2015-05-07 7:25"},
		{seq_num: 17,name: "Quaidabad",lat: 24.85533,lon: 67.2116,prev: "2015-05-07 7:30"},
		{seq_num: 18,name: "Gul Ahmed",lat: 24.85477,lon: 67.2273,prev: "2015-05-07 7:35"},
		{seq_num: 19,name: "Fast",lat: 24.85747,lon: 67.26428,prev: "2015-05-07 7:45"}
  	]

  	route18.each do |stop|
		@stop = Stop.create({name: stop[:name], lat: stop[:lat], long: stop[:lon]})
		@vs = @stop.vehicle_stops.create(prev: stop[:prev], vehicle_id: vehicle18.id, seq_num: stop[:seq_num])
	end
  end

end
