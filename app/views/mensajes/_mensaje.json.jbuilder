json.extract! mensaje, :id, :nombre_apellido, :correo_electronico, :telefono, :mensaje, :created_at, :updated_at
json.url mensaje_url(mensaje, format: :json)
