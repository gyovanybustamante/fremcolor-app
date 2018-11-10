class CreateMensajes < ActiveRecord::Migration[5.2]
  def change
    create_table :mensajes do |t|
      t.string :nombre_apellido
      t.string :correo_electronico
      t.integer :telefono
      t.text :mensaje

      t.timestamps
    end
  end
end
