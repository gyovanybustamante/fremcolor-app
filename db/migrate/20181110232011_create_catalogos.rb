class CreateCatalogos < ActiveRecord::Migration[5.2]
  def change
    create_table :catalogos do |t|
      t.string :titulo

      t.timestamps
    end
  end
end
