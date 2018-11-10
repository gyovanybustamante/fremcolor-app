json.extract! graficos_producto, :id, :video, :titulo, :linea_producto, :marca, :descripcion, :especificaciones_tecnicas, :presentacion, :precio, :created_at, :updated_at
json.url graficos_producto_url(graficos_producto, format: :json)
