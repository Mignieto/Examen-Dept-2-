class CreateUsuarios < ActiveRecord::Migration[5.2]
  def change
    create_table :usuarios do |t|
      t.string :name
      t.string :apellidos
      t.string :correo
      t.string :direccion
      t.integer :telefono

      t.timestamps
    end
  end
end
