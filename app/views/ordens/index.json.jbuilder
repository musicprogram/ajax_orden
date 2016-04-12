json.array!(@ordens) do |orden|
  json.extract! orden, :id, :name, :cantidad, :numero
  json.url orden_url(orden, format: :json)
end
