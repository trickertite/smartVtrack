json.array!(@vehicles) do |vehicle|
  json.extract! vehicle, :id, :name, :plate_number, :type
  json.url vehicle_url(vehicle, format: :json)
end
