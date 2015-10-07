json.array!(@vehicles) do |vehicle|
  json.extract! vehicle, :id, :licenseplate, :brand_id, :model_id, :manufacturingyear, :weight, :width, :grossweight, :dryweight, :usefulload, :typeofvehicle_id, :datesoat, :datetechnicalreview
  json.url vehicle_url(vehicle, format: :json)
end
