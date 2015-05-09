json.array!(@reservations) do |reservation|
  json.extract! reservation, :id, :passenger_stop, :is_alert
  json.url reservation_url(reservation, format: :json)
end
