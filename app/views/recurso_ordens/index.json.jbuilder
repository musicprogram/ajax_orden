json.array!(@recurso_ordens) do |recurso_orden|
  json.extract! recurso_orden, :id, :talla, :cantidad, :orden_id
  json.url recurso_orden_url(recurso_orden, format: :json)
end
