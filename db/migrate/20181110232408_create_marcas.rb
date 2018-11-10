class CreateMarcas < ActiveRecord::Migration[5.2]
  def change
    create_table :marcas do |t|
      t.string :empresa
      t.text :descripcion

      t.timestamps
    end
  end
end
