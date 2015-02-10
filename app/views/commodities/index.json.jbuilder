json.array!(@commodities) do |commodity|
  json.extract! commodity, :id, :title, :description, :stock_quantity, :quantity_units
  json.url commodity_url(commodity, format: :json)
end
