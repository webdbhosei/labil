json.array!(@registrations) do |registration|
  json.extract! registration, :id, :lab, :string
  json.url registration_url(registration, format: :json)
end
