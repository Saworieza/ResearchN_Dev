json.array!(@profiles) do |profile|
  json.extract! profile, :id, :name, :short_description
  json.url profile_url(profile, format: :json)
end
