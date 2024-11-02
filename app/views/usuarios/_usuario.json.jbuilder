json.extract! usuario, :id, :nombre, :email, :telefono, :direccion, :tipo_usuario, :created_at, :updated_at
json.url usuario_url(usuario, format: :json)
