# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2018_11_10_234941) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "blogs", force: :cascade do |t|
    t.string "titulo"
    t.text "contenido"
    t.date "fecha_creacion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "catalogos", force: :cascade do |t|
    t.string "titulo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cursos", force: :cascade do |t|
    t.string "titulo_curso"
    t.text "objetivo_curso"
    t.string "contenido_curso_text"
    t.text "requisitos"
    t.string "duracion"
    t.date "fecha_inicio"
    t.date "fecha_fin"
    t.string "hora"
    t.integer "precio"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "graficos_productos", force: :cascade do |t|
    t.string "video"
    t.string "titulo"
    t.string "linea_producto"
    t.string "marca"
    t.text "descripcion"
    t.text "especificaciones_tecnicas"
    t.string "presentacion"
    t.integer "precio"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "impresoras_sublimacion_productos", force: :cascade do |t|
    t.string "video"
    t.string "titulo"
    t.string "linea_producto"
    t.string "marca"
    t.text "descripcion"
    t.text "especificaciones_tecnicas"
    t.string "presentacion"
    t.integer "precio"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "insumos_serigrafia_productos", force: :cascade do |t|
    t.string "video"
    t.string "titulo"
    t.string "linea_producto"
    t.string "marca"
    t.text "descripcion"
    t.text "especificaciones_tecnicas"
    t.string "presentacion"
    t.integer "precio"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "insumos_sublimacion_productos", force: :cascade do |t|
    t.string "video"
    t.string "titulo"
    t.string "linea_producto"
    t.string "marca"
    t.text "descripcion"
    t.text "especificaciones_tecnicas"
    t.string "presentacion"
    t.integer "precio"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "maquinaria_serigrafia_productos", force: :cascade do |t|
    t.string "video"
    t.string "titulo"
    t.string "linea_producto"
    t.string "marca"
    t.text "descripcion"
    t.text "especificaciones_tecnicas"
    t.string "presentacion"
    t.integer "precio"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "marcas", force: :cascade do |t|
    t.string "empresa"
    t.text "descripcion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mensajes", force: :cascade do |t|
    t.string "nombre_apellido"
    t.string "correo_electronico"
    t.integer "telefono"
    t.text "mensaje"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "papel_sublimacion_productos", force: :cascade do |t|
    t.string "video"
    t.string "titulo"
    t.string "linea_producto"
    t.string "marca"
    t.text "descripcion"
    t.text "especificaciones_tecnicas"
    t.string "presentacion"
    t.integer "precio"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "planchas_sublimacion_productos", force: :cascade do |t|
    t.string "video"
    t.string "titulo"
    t.string "linea_producto"
    t.string "marca"
    t.text "descripcion"
    t.text "especificaciones_tecnicas"
    t.string "presentacion"
    t.integer "precio"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "promocions", force: :cascade do |t|
    t.string "cideo_promocion"
    t.string "titulo_promocion"
    t.text "descripcion_promocion"
    t.text "especificaciones_tecnicas"
    t.integer "precio"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "quimicos_productos", force: :cascade do |t|
    t.string "video"
    t.string "titulo"
    t.string "linea_producto"
    t.string "marca"
    t.text "descripcion"
    t.text "especificaciones_tecnicas"
    t.string "presentacion"
    t.integer "precio"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "quimicos_serigrafia_productos", force: :cascade do |t|
    t.string "video"
    t.string "titulo"
    t.string "linea_producto"
    t.string "marca"
    t.text "descripcion"
    t.text "especificaciones_tecnicas"
    t.string "presentacion"
    t.integer "precio"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "repuestos_serigrafia_productos", force: :cascade do |t|
    t.string "video"
    t.string "titulo"
    t.string "linea_producto"
    t.string "marca"
    t.text "descripcion"
    t.text "especificaciones_tecnicas"
    t.string "presentacion"
    t.integer "precio"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "seguridad_productos", force: :cascade do |t|
    t.string "video"
    t.string "titulo"
    t.string "linea_producto"
    t.string "marca"
    t.text "descripcion"
    t.text "especificaciones_tecnicas"
    t.string "presentacion"
    t.integer "precio"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "servicios", force: :cascade do |t|
    t.string "titulo"
    t.text "descripcion"
    t.integer "precio"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tinta_serigrafia_productos", force: :cascade do |t|
    t.string "video"
    t.string "titulo"
    t.string "linea_producto"
    t.string "marca"
    t.text "descripcion"
    t.text "especificaciones_tecnicas"
    t.string "presentacion"
    t.integer "precio"
    t.string "titulo_grupo_color_uno"
    t.string "titulo_grupo_color_dos"
    t.string "titulo_grupo_color_tres"
    t.string "titulo_grupo_color_cuatro"
    t.string "titulo_grupo_color_cinco"
    t.string "titulo_grupo_color_seis"
    t.string "titulo_grupo_color_siete"
    t.string "titulo_grupo_color_ocho"
    t.string "titulo_grupo_color_nueve"
    t.string "titulo_grupo_color_diez"
    t.string "titulo_grupo_color_once"
    t.string "titulo_grupo_color_doce"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tinta_sublimacion_productos", force: :cascade do |t|
    t.string "video"
    t.string "titulo"
    t.string "linea_producto"
    t.string "marca"
    t.text "descripcion"
    t.text "especificaciones_tecnicas"
    t.string "presentacion"
    t.integer "precio"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
