json.extract! servicio, :id, :titulo, :descripcion, :precio, :created_at, :updated_at
json.url servicio_url(servicio, format: :json)
