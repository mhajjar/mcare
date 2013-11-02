json.array!(@employees) do |employee|
  json.extract! employee, :FirstName, :LastName, :EmployeeId, :EmailAddress, :Department
  json.url employee_url(employee, format: :json)
end
