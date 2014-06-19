json.array!(@cards) do |card|
  json.extract! card, :id, :fname, :lname, :card_number
  json.url card_url(card, format: :json)
end
