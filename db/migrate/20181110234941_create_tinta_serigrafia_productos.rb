class CreateTintaSerigrafiaProductos < ActiveRecord::Migration[5.2]
  def change
    create_table :tinta_serigrafia_productos do |t|
      t.string :video
      t.string :titulo
      t.string :linea_producto
      t.string :marca
      t.text :descripcion
      t.text :especificaciones_tecnicas
      t.string :presentacion
      t.integer :precio
      t.string :titulo_grupo_color_uno
      t.string :titulo_grupo_color_dos
      t.string :titulo_grupo_color_tres
      t.string :titulo_grupo_color_cuatro
      t.string :titulo_grupo_color_cinco
      t.string :titulo_grupo_color_seis
      t.string :titulo_grupo_color_siete
      t.string :titulo_grupo_color_ocho
      t.string :titulo_grupo_color_nueve
      t.string :titulo_grupo_color_diez
      t.string :titulo_grupo_color_once
      t.string :titulo_grupo_color_doce

      t.timestamps
    end
  end
end
