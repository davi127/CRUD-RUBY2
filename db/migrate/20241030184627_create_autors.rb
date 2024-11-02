class CreateAutors < ActiveRecord::Migration[7.2]
  def change
    create_table :autors do |t|
      t.string :nombre
      t.string :pais
      t.text :biografia
      t.date :fecha_nacimiento
      t.date :fecha_fallecimiento

      t.timestamps
    end
  end
end
