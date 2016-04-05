json.array!(@flats) do |flat|
  json.extract! flat, :id, :type, :flat_name, :floor, :flat_number, :address, :city, :syndicate, :postal_code, :description, :country, :loan_cost, :tax_cost
  json.url flat_url(flat, format: :json)
end
