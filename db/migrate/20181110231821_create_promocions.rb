class CreatePromocions < ActiveRecord::Migration[5.2]
  def change
    create_table :promocions do |t|
      t.string :cideo_promocion
      t.string :titulo_promocion
      t.text :descripcion_promocion
      t.text :especificaciones_tecnicas
      t.integer :precio

      t.timestamps
    end
  end
end
