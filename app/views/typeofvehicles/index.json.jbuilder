json.array!(@typeofvehicles) do |typeofvehicle|
  json.extract! typeofvehicle, :id, :description
  json.url typeofvehicle_url(typeofvehicle, format: :json)
end
