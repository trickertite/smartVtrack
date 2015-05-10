json.array!(@vehicle_stops) do |vehicle_stop|
  json.extract! vehicle_stop, :id, :prev, :avg
  json.url vehicle_stop_url(vehicle_stop, format: :json)
end
