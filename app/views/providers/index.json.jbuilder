json.array!(@providers) do |provider|
  json.extract! provider, :Name, :Street, :City, :State, :Zip
  json.url provider_url(provider, format: :json)
end
