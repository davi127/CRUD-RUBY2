# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.2].define(version: 2024_10_30_184739) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "autors", force: :cascade do |t|
    t.string "nombre"
    t.string "pais"
    t.text "biografia"
    t.date "fecha_nacimiento"
    t.date "fecha_fallecimiento"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categoria", force: :cascade do |t|
    t.string "nombre"
    t.text "descripcion"
    t.date "fecha_creacion"
    t.integer "nivel"
    t.string "estado"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "libros", force: :cascade do |t|
    t.string "titulo"
    t.string "isbn"
    t.integer "anio_publicacion"
    t.bigint "autor_id", null: false
    t.bigint "categoria_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["autor_id"], name: "index_libros_on_autor_id"
    t.index ["categoria_id"], name: "index_libros_on_categoria_id"
  end

  create_table "prestamos", force: :cascade do |t|
    t.bigint "usuario_id", null: false
    t.bigint "libro_id", null: false
    t.date "fecha_prestamo"
    t.date "fecha_devolucion"
    t.string "estado"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["libro_id"], name: "index_prestamos_on_libro_id"
    t.index ["usuario_id"], name: "index_prestamos_on_usuario_id"
  end

  create_table "resenas", force: :cascade do |t|
    t.bigint "libro_id", null: false
    t.bigint "usuario_id", null: false
    t.integer "calificacion"
    t.text "comentario"
    t.date "fecha"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["libro_id"], name: "index_resenas_on_libro_id"
    t.index ["usuario_id"], name: "index_resenas_on_usuario_id"
  end

  create_table "usuarios", force: :cascade do |t|
    t.string "nombre"
    t.string "email"
    t.string "telefono"
    t.string "direccion"
    t.string "tipo_usuario"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "libros", "autors"
  add_foreign_key "libros", "categoria", column: "categoria_id"
  add_foreign_key "prestamos", "libros"
  add_foreign_key "prestamos", "usuarios"
  add_foreign_key "resenas", "libros"
  add_foreign_key "resenas", "usuarios"
end
