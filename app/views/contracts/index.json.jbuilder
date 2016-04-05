json.array!(@contracts) do |contract|
  json.extract! contract, :id, :rent_start, :rent_end, :renter_id, :rent_amount, :warranty_amount, :pay_day, :active, :days_to_reminder
  json.url contract_url(contract, format: :json)
end
