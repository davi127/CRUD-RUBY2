json.extract! resena, :id, :libro_id, :usuario_id, :calificacion, :comentario, :fecha, :created_at, :updated_at
json.url resena_url(resena, format: :json)
