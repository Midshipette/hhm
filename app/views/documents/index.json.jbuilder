json.array!(@documents) do |document|
  json.extract! document, :id, :contract_id, :type, :expiration_date, :name, :reminder_sent_date, :days_to_reminder
  json.url document_url(document, format: :json)
end
