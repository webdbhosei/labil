json.array!(@members) do |member|
  json.extract! member, :id, :name, :user_id
  json.url member_url(member, format: :json)
end
