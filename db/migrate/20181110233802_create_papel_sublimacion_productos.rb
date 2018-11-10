class CreatePapelSublimacionProductos < ActiveRecord::Migration[5.2]
  def change
    create_table :papel_sublimacion_productos do |t|
      t.string :video
      t.string :titulo
      t.string :linea_producto
      t.string :marca
      t.text :descripcion
      t.text :especificaciones_tecnicas
      t.string :presentacion
      t.integer :precio

      t.timestamps
    end
  end
end
