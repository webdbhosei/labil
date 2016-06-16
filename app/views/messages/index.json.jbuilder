json.array!(@messages) do |message|
  json.extract! message, :id, :member_id, :message
  json.url message_url(message, format: :json)
end
