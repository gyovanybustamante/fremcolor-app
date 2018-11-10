json.extract! curso, :id, :titulo_curso, :objetivo_curso, :contenido_curso_text, :requisitos, :duracion, :fecha_inicio, :fecha_fin, :hora, :precio, :created_at, :updated_at
json.url curso_url(curso, format: :json)
