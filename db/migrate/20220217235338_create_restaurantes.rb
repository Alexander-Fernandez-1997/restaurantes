class CreateRestaurantes < ActiveRecord::Migration[6.1]
  def change
    create_table :restaurantes do |t|
      t.string :nombre
      t.string :direccion
      t.integer :estrellas
      t.integer :capacidad
      t.string :estilo
      t.references :platillo, null: false, foreign_key: true
      t.references :empleado, null: false, foreign_key: true

      t.timestamps
    end
  end
end
