json.array!(@medical_providers) do |medical_provider|
  json.extract! medical_provider, :Specialty, :string, :street, :City, :Zip
  json.url medical_provider_url(medical_provider, format: :json)
end
