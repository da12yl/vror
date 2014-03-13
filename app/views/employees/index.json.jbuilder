json.array!(@employees) do |employee|
  json.extract! employee, :id, :name, :phone, :hiredate, :email
  json.url employee_url(employee, format: :json)
end
