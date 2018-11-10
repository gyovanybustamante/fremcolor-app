json.extract! seguridad_producto, :id, :video, :titulo, :linea_producto, :marca, :descripcion, :especificaciones_tecnicas, :presentacion, :precio, :created_at, :updated_at
json.url seguridad_producto_url(seguridad_producto, format: :json)
