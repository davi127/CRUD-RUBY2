json.extract! prestamo, :id, :usuario_id, :libro_id, :fecha_prestamo, :fecha_devolucion, :estado, :created_at, :updated_at
json.url prestamo_url(prestamo, format: :json)
