class CreateBlogs < ActiveRecord::Migration[5.2]
  def change
    create_table :blogs do |t|
      t.string :titulo
      t.text :contenido
      t.date :fecha_creacion

      t.timestamps
    end
  end
end
