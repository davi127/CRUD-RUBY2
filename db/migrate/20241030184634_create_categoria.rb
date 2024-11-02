class CreateCategoria < ActiveRecord::Migration[7.2]
  def change
    create_table :categoria do |t|
      t.string :nombre
      t.text :descripcion
      t.date :fecha_creacion
      t.integer :nivel
      t.string :estado

      t.timestamps
    end
  end
end
