json.array!(@dogs) do |dog|
  json.extract! dog, :id, :breed, :age, :medical_status
  json.url dog_url(dog, format: :json)
end
