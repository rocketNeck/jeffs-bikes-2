json.array!(@bikes) do |bike|
  json.extract! bike, :id, :company, :year, :month, :serial_number_1, :serial_number_2, :model, :rim_size, :bike_type, :metal, :top_tube, :head_tube, :color, :serial_number_location
  json.url bike_url(bike, format: :json)
end
