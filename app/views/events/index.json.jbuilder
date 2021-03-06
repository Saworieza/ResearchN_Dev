json.array!(@events) do |event|
  json.extract! event, :id, :title, :details, :organizer, :date, :start, :end
  json.url event_url(event, format: :json)
end
