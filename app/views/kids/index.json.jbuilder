json.array!(@kids) do |kid|
  json.extract! kid, :id
  json.url kid_url(kid, format: :json)
end
