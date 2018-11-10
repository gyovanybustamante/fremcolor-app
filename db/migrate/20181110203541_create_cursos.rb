class CreateCursos < ActiveRecord::Migration[5.2]
  def change
    create_table :cursos do |t|
      t.string :titulo_curso
      t.text :objetivo_curso
      t.string :contenido_curso_text
      t.text :requisitos
      t.string :duracion
      t.date :fecha_inicio
      t.date :fecha_fin
      t.string :hora
      t.integer :precio

      t.timestamps
    end
  end
end
