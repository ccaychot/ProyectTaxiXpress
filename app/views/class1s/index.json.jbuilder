json.array!(@class1s) do |class1|
  json.extract! class1, :id, :description
  json.url class1_url(class1, format: :json)
end
