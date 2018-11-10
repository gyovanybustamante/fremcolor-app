json.extract! quimicos_producto, :id, :video, :titulo, :linea_producto, :marca, :descripcion, :especificaciones_tecnicas, :presentacion, :precio, :created_at, :updated_at
json.url quimicos_producto_url(quimicos_producto, format: :json)
