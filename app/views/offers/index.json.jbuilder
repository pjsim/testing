json.array!(@offers) do |offer|
  json.extract! offer, :id, :haggle_id, :type, :price, :quantity, :meet_you, :meet_me, :meet_half, :ship_you, :from, :to
  json.url offer_url(offer, format: :json)
end
