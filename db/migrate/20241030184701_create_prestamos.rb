class CreatePrestamos < ActiveRecord::Migration[7.2]
  def change
    create_table :prestamos do |t|
      t.references :usuario, null: false, foreign_key: true
      t.references :libro, null: false, foreign_key: true
      t.date :fecha_prestamo
      t.date :fecha_devolucion
      t.string :estado

      t.timestamps
    end
  end
end
