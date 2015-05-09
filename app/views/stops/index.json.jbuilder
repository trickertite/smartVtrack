json.array!(@stops) do |stop|
  json.extract! stop, :id, :name, :lat, :long
  json.url stop_url(stop, format: :json)
end
