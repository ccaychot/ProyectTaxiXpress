json.array!(@drivers) do |driver|
  json.extract! driver, :id, :identity, :lastname, :address, :category_id, :class1, :expeditiondate, :revalidationdate, :numberlicense, :dateexpiry, :birthdate, :sex_id, :status_id
  json.url driver_url(driver, format: :json)
end
