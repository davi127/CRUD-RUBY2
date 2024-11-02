class CreateUsuarios < ActiveRecord::Migration[7.2]
  def change
    create_table :usuarios do |t|
      t.string :nombre
      t.string :email
      t.string :telefono
      t.string :direccion
      t.string :tipo_usuario

      t.timestamps
    end
  end
end
