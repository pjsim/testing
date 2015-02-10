json.array!(@haggles) do |haggle|
  json.extract! haggle, :id, :commodity_id, :open
  json.url haggle_url(haggle, format: :json)
end
