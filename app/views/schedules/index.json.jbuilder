json.array!(@schedules) do |schedule|
  json.extract! schedule, :id, :member_id, :start_time, :end_time, :venue
  json.url schedule_url(schedule, format: :json)
end
