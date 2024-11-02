class CreateResenas < ActiveRecord::Migration[7.2]
  def change
    create_table :resenas do |t|
      t.references :libro, null: false, foreign_key: true
      t.references :usuario, null: false, foreign_key: true
      t.integer :calificacion
      t.text :comentario
      t.date :fecha

      t.timestamps
    end
  end
end
