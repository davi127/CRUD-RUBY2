class CreateLibros < ActiveRecord::Migration[7.2]
  def change
    create_table :libros do |t|
      t.string :titulo
      t.string :isbn
      t.integer :anio_publicacion
      t.references :autor, null: false, foreign_key: true
      t.references :categoria, null: false, foreign_key: true

      t.timestamps
    end
  end
end
