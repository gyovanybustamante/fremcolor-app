json.extract! blog, :id, :titulo, :contenido, :fecha_creacion, :created_at, :updated_at
json.url blog_url(blog, format: :json)
