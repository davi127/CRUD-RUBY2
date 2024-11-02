json.extract! libro, :id, :titulo, :isbn, :anio_publicacion, :autor_id, :categoria_id, :created_at, :updated_at
json.url libro_url(libro, format: :json)
